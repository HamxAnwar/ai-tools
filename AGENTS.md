# AGENTS.md
## Environment
Nix flake-based AI dev environment. Enter with `nix develop`.
## Commands
- `nix develop` - dev shell
- `nix flake update` - update deps
- `nix flake check` - validate
## Code Style
- Nix conventions
- Descriptive names
- Minimal config
- Prefer stable packages
## Development
- OpenCode + Ollama for AI coding
- No build/lint/test cycle
- Concise shellHook
- Comment purposes
## Best Practices
- Test with `nix develop`
- Update flake.lock
- Minimal inputs
- Semantic versioning