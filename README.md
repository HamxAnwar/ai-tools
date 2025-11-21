# AI Tools Development Environment

A Nix flake-based development environment for AI-assisted coding, featuring OpenCode, Goose CLI, and Ollama for running local AI models.

## Features

- **OpenCode**: AI-powered coding assistant
- **Goose CLI**: Command-line interface for AI interactions
- **Ollama**: Run local AI models
- **Git**: Version control
- **Nix Flake**: Reproducible development environment

## Prerequisites

- [Nix](https://nixos.org/download/) installed with flakes enabled
- Git

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/HamxAnwar/ai-tools.git
   cd ai-tools
   ```

2. Enter the development environment:
   ```bash
   nix develop
   ```

## Usage

Once in the Nix shell (`nix develop`), you can use the following tools:

- `opencode` - Start the AI coding assistant
- `goose` - Interact with AI via command line
- `ollama` - Manage and run AI models

### Recommended Models

For optimal performance with 6GB VRAM:

- **Planner**: `deepseek-r1-distill:7b`
- **Executor**: `deepseek-coder-v2:16b` or `qwen2.5-coder:14b`

See [Recommendation.txt](Recommendation.txt) for detailed model recommendations.

## Development

- Update dependencies: `nix flake update`
- Validate flake: `nix flake check`
- Follow Nix conventions and best practices as outlined in [AGENTS.md](AGENTS.md)

## Configuration

The environment is configured via `flake.nix`. OpenCode settings are in `opencode.json`.

## Contributing

Contributions are welcome! Please follow the guidelines in [AGENTS.md](AGENTS.md).</content>
<parameter name="filePath">README.md