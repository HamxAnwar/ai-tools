# Project Context

## Purpose
This project provides a Nix flake-based development environment for AI-assisted coding. It features OpenCode, an AI-powered coding assistant, and OpenSpec, a spec-driven development tool for managing changes and requirements in AI-powered workflows. The goal is to create a reproducible, efficient environment that enhances developer productivity through AI tools and structured development processes.

## Tech Stack
- Nix (flakes for reproducible development environments)
- Git (version control)
- OpenCode (AI-powered coding assistant tool)
- OpenSpec (spec-driven development and change management tool)
- Shell scripting (Bash for tooling and automation)

## Project Conventions

### Code Style
- Follow Nix best practices and conventions as outlined in the Nix documentation
- Use kebab-case for file and directory names in OpenSpec structures
- Maintain consistent formatting in Markdown files for specs and proposals
- Use descriptive, verb-led naming for change IDs (e.g., add-feature, update-capability)

### Architecture Patterns
- Spec-driven development: All changes start with proposals and spec deltas
- Modular capabilities: Each feature is organized as a single-focused capability in specs/
- Three-stage workflow: Proposal → Implementation → Archive
- Use OpenSpec for managing requirements, scenarios, and change tracking

### Testing Strategy
- Validate changes using `openspec validate --strict` before implementation
- Ensure all requirements have at least one scenario
- Test spec compliance through OpenSpec validation tools
- Manual testing for tool functionality in the Nix development environment

### Git Workflow
- Use OpenSpec for all change management and proposals
- Create change proposals in `openspec/changes/[change-id]/` with proposal.md, tasks.md, and spec deltas
- Implement changes only after proposal approval
- Archive completed changes using `openspec archive <change-id>`
- Commit messages should reference change IDs when applicable

## Domain Context
This project operates in the domain of AI-assisted software development. Key concepts include:
- AI agents: Autonomous assistants that help with coding, planning, and execution
- Spec-driven workflows: Using specifications to drive development and ensure requirements are met
- Reproducible environments: Using Nix flakes to ensure consistent development setups
- Change management: Structured process for proposing, implementing, and tracking changes

## Important Constraints
- Requires Nix with flakes enabled (nix develop command)
- Linux platform (as indicated by the environment)
- Must follow OpenSpec conventions for any changes or additions
- Development environment must be entered via `nix develop` for tool access

## External Dependencies
- Git (for version control)
- Nix (for package management and development environment)
- No external APIs or services required; tools are self-contained within the Nix environment
