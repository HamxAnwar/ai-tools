{
  description = "AI development environment with Aider and Ollama";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, flake-utils }:

  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          pkgs-unstable.opencode
          pkgs-unstable.goose-cli
          ollama
          git
        ];

        shellHook = ''
          echo "🤖 AI Development Environment Ready!"
          echo "   OpenCode version: $(opencode --version)"
          echo "   Goose version: $(goose --version)"
          echo "   Available models: $(ollama list)"
          echo ""
        '';
      };
    });
}
