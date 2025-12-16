{
  description = "AI development environment with Aider and Ollama";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    llm-agents.url = "github:numtide/llm-agents.nix";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, flake-utils, llm-agents }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            git
            # ollama  # From stable nixpkgs; use pkgs-unstable.ollama if needed
          ] ++ (with llm-agents.packages.${pkgs.system}; [
            # AI tools from nix-ai-tools
            opencode
            openspec
            # Add more as needed, e.g.:
            # claude-code
            # gemini-cli
            # goose-cli
          ]);

          shellHook = ''
            echo ""
            echo "AI Development Environment Ready!"
            echo " • OpenCode : $(opencode --version 2>/dev/null || echo 'not found')"
            echo " • OpenSpec : $(openspec --version 2>/dev/null || echo 'not found')"
            # echo " • Ollama   : $(ollama --version 2>/dev/null || echo 'not found')"
            echo ""
          '';
        };
      }
    );
}
