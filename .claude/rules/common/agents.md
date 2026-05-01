# Agent Orchestration

## Available Agents

Located in `~/.claude/agents/`:

| Agent File | Name | Role | When to Use |
|---|---|---|---|
| atlas-planner | **Atlas** | Planner | Complex features, refactoring |
| newton-architect | **Newton** | Architect | Architectural decisions |
| red-tdd-guide | **Red** | TDD Guide | New features, bug fixes |
| iris-code-reviewer | **Iris** | Code Reviewer | After writing code |
| cipher-security-reviewer | **Cipher** | Security Expert | Before commits |
| felix-build-error-resolver | **Felix** | Build Fixer | When build fails |
| scout-e2e-runner | **Scout** | E2E Tester | Critical user flows |
| zen-refactor-cleaner | **Zen** | Refactor Specialist | Code cleanup |
| sage-doc-updater | **Sage** | Documentation Expert | Updating docs |
| rex-database-reviewer | **Rex** | Database Specialist | Schema design, SQL |
| pythia-python-reviewer | **Pythia** | Python Expert | Python code changes |
| maya-chief-of-staff | **Maya** | Chief of Staff | Communication triage |
| orbit-loop-operator | **Orbit** | Loop Operator | Autonomous loops |
| turbo-harness-optimizer | **Turbo** | Harness Optimizer | Config reliability & cost |

## Immediate Agent Usage

No user prompt needed:
1. Complex feature requests - Use **planner** agent
2. Code just written/modified - Use **code-reviewer** agent
3. Bug fix or new feature - Use **tdd-guide** agent
4. Architectural decision - Use **architect** agent

## Parallel Task Execution

ALWAYS use parallel Task execution for independent operations:

```markdown
# GOOD: Parallel execution
Launch 3 agents in parallel:
1. Agent 1: Security analysis of auth module
2. Agent 2: Performance review of cache system
3. Agent 3: Type checking of utilities

# BAD: Sequential when unnecessary
First agent 1, then agent 2, then agent 3
```

## Multi-Perspective Analysis

For complex problems, use split role sub-agents:
- Factual reviewer
- Senior engineer
- Security expert
- Consistency reviewer
- Redundancy checker
