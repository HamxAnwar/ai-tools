# AI Tools Development Environment

A Nix flake-based development environment for AI-assisted coding, featuring OpenCode and OpenSpec for AI-powered development and spec-driven workflows.

## Features

- **OpenCode**: AI-powered coding assistant
- **OpenSpec**: Spec-driven development tool for managing changes and requirements
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
- `openspec` - Manage spec-driven development workflows

### OpenSpec Workflow

This project uses OpenSpec for spec-driven development. All changes follow a three-stage process:

1. **Proposal**: Create change proposals in `openspec/changes/[change-id]/` with `proposal.md`, `tasks.md`, and spec deltas
2. **Implementation**: Implement changes after proposal approval, tracking progress in `tasks.md`
3. **Archive**: Move completed changes to `openspec/changes/archive/` and update specs

Key commands:
- `openspec list` - View active changes
- `openspec list --specs` - View existing capabilities
- `openspec validate [change-id] --strict` - Validate proposals
- `openspec archive [change-id]` - Archive completed changes

## Project Structure

```
ai-tools/
├── flake.nix              # Nix flake configuration
├── flake.lock             # Nix flake lock file
├── README.md              # This file
├── AGENTS.md              # AI assistant instructions
├── openspec/              # OpenSpec directory
│   ├── project.md         # Project context and conventions
│   ├── AGENTS.md          # OpenSpec instructions for AI assistants
│   ├── specs/             # Current specifications (capabilities)
│   ├── changes/           # Change proposals
│   │   ├── [change-id]/   # Individual change proposals
│   │   └── archive/       # Completed changes
│   └── ...
└── ...
```

## Development

- Update dependencies: `nix flake update`
- Validate flake: `nix flake check`
- Follow Nix conventions and best practices as outlined in [AGENTS.md](AGENTS.md)
- Use OpenSpec for managing changes: see [openspec/AGENTS.md](openspec/AGENTS.md)
- Read project conventions in [openspec/project.md](openspec/project.md)
- For any changes, create proposals using OpenSpec workflow
- Validate changes with `openspec validate [change-id] --strict` before implementation

## Configuration

The environment is configured via `flake.nix`. Follow OpenSpec conventions in `openspec/AGENTS.md`.

## Contributing

Contributions are welcome! Please:

- Read the [OpenSpec Workflow](#openspec-workflow) section above
- Follow the guidelines in [AGENTS.md](AGENTS.md)
- Use OpenSpec for change proposals as described in [openspec/AGENTS.md](openspec/AGENTS.md)
- Review [openspec/project.md](openspec/project.md) for project conventions
- Create change proposals for any new features or modifications</content>
<parameter name="filePath">README.md