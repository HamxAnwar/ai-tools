# Change: Add Software Agent Team

## Why
To enhance the AI-assisted coding environment by introducing a structured team of specialized agents that can collaborate on software development tasks, improving productivity and code quality through division of responsibilities.

## What Changes
- Add a new capability for managing a team of AI agents in the software/ folder
- Create agent configurations for orchestrator (primary), backend developers, frontend developer, reviewer, and documentator
- Define permissions where subagents have specific capabilities and orchestrator can interact with users
- Backend agents will focus on secure code development

## Impact
- Affected specs: New software capability
- Affected code: New software/ folder with agent configuration files
- No breaking changes to existing functionality