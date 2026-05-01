# Claude Developer Team

A production-ready Claude Code setup with a named developer team, automated workflows, and an onboarding flow. Clone this to start any new project with Claude Code fully configured.

## What is this?

This is a template repository for Claude Code projects. It comes with:
- **14 specialized agents** — each with a name and specific role (Atlas the planner, Red the TDD specialist, Cipher the security expert, etc.)
- **Automated hooks** — code linting, permission management, and pre-commit checks
- **Skills library** — domain-specific tools for common tasks
- **Slash commands** — including `/init` for project onboarding
- **Memory system** — tracks feedback, decisions, and ongoing work

Get started in 30 seconds: clone, run `/init`, and you're ready to build.

## The Team

Your developer team has 14 specialized members, each activated automatically when their expertise is needed:

| Name | Role | When activated |
|------|------|----------------|
| **Atlas** | Planner | Complex features, refactoring |
| **Newton** | Architect | Architectural decisions |
| **Red** | TDD Guide | New features, bug fixes |
| **Iris** | Code Reviewer | After writing code |
| **Cipher** | Security Expert | Before commits |
| **Felix** | Build Fixer | When build fails |
| **Scout** | E2E Tester | Critical user flows |
| **Zen** | Refactor Specialist | Code cleanup |
| **Sage** | Documentation Expert | Updating docs |
| **Rex** | Database Specialist | Schema & SQL |
| **Pythia** | Python Expert | Python code changes |
| **Maya** | Chief of Staff | Communication triage |
| **Orbit** | Loop Operator | Autonomous loops |
| **Turbo** | Harness Optimizer | Config & cost |

## How Claude Works

### Plan First, Always

Before starting any task, Claude creates a plan. This is not optional. It prevents wasted effort and ensures alignment before code is written.

- **Complex features?** Atlas (Planner) creates a detailed implementation plan first.
- **Architectural questions?** Newton (Architect) analyzes the decision space before recommending.
- **Bug fix?** Diagnosis happens before any code is written.
- **Unclear requirements?** Claude asks clarifying questions first.

### Agent-First Approach

Claude delegates to specialized team members for domain tasks:
- **Security review?** → Cipher handles it
- **Database schema design?** → Rex handles it
- **Python code changes?** → Pythia reviews it
- **Code quality?** → Iris reviews it

This ensures consistency and expertise on every task.

### Test-Driven Development (TDD)

**Mandatory workflow:**
1. Red writes tests first (tests fail)
2. Implement minimal code to pass tests (tests pass)
3. Refactor with 80%+ coverage verified

### Security-First

Cipher reviews before every commit:
- No hardcoded secrets (API keys, passwords)
- All user inputs validated
- SQL injection prevention
- XSS prevention
- Authentication/authorization verified

### Parallel Execution

Independent tasks run in parallel — if you ask Claude to do multiple unrelated things, they happen simultaneously.

## Getting Started

### Step 1: Clone the template

```bash
git clone https://github.com/thethomaster/Claude_developer_team.git my-project
cd my-project
```

### Step 2: Remove the template's git history

```bash
rm -rf .git
git init
git add .
git commit -m "chore: initialize from Claude developer team template"
```

### Step 3: Open Claude Code

```bash
claude
```

### Step 4: Run the onboarding

```
/init
```

This will ask you:
- What is your project?
- What's the primary language?
- How do you want to work with Claude?

CLAUDE.md will be automatically updated with your answers.

### Step 5: Start building

You're ready to start. Claude will use the team members as needed.

## What's Included

- **`.claude/agents/`** — 14 named specialist agents
  - `atlas-planner.md`, `newton-architect.md`, `red-tdd-guide.md`, etc.
- **`.claude/commands/`** — Slash commands including `/init`
- **`.claude/hooks/`** — Automated checks and validations
- **`.claude/rules/`** — Coding guidelines and development workflows
- **`.claude/scripts/`** — Cross-platform utilities
- **`.claude/skills/`** — Reusable domain knowledge
- **`memory/`** — Session memory system
  - `MEMORY.md` — Feedback, decisions, reference
  - `WIP.md` — Current work in progress
- **`CLAUDE.md`** — Project configuration (updated by `/init`)

## Adding Your Own Agents

Agents are markdown files in `.claude/agents/` with YAML frontmatter:

```markdown
---
name: Your Agent Name
description: Brief description of expertise
tools: ["Read", "Grep"]
model: opus
---

You are **Your Agent Name**, [role description].

## Your Guidance

[Agent instructions]
```

## Reference

- **CLAUDE.md** — Project configuration and core principles
- **memory/MEMORY.md** — Feedback and decisions (updated as you work)
- **memory/WIP.md** — Work in progress (updated before and after tasks)
- **Agents** — Each agent has detailed instructions in `.claude/agents/`
- **Rules** — Coding style, testing, security, and git workflow in `.claude/rules/`

## License

MIT License — use this template freely for any project.

## Credits

Built with Claude Code and the Anthropic SDK. Each agent is a prompt-engineered specialist designed to work together as a cohesive development team.
