# /init — Project Onboarding

You are starting a new project with the Claude Developer Team. Run this onboarding to configure your project.

## Onboarding Flow

Work through these steps in order. Ask one section at a time.

### Step 1: Project Identity

Ask the user:
- "What is the name of this project?"
- "In 2-3 sentences, what is the goal of this project? Who is the target user?"
- "What is the primary deliverable? (web app, API, CLI tool, data pipeline, etc.)"

### Step 2: Programming Language

Present this recommendation:
> "Based on the project type, here is my recommendation:
> - Web app with frontend → **TypeScript** (Vue/React) + **Python** (FastAPI) or **Node.js**
> - API/backend only → **Python** (FastAPI/Django) or **Node.js**
> - Data/ML pipeline → **Python**
> - CLI tool → **Python** or **Go**
> - Mobile → **Swift** (iOS) or **Kotlin** (Android) or **TypeScript** (React Native)
>
> Do you agree, or do you prefer a different stack? (You can also say 'I don't know' and I'll recommend based on your goal.)"

### Step 3: Work Style

Ask:
- "Do you want me to run independent tasks in parallel where possible? (Recommended: Yes — it speeds up work significantly)"
- "Do you prefer I plan complex tasks first and confirm before implementing, or can I start directly?"

### Step 4: Developer Team Review

Show the full agent roster and ask:
"Here is your developer team for this project:

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

Is this team complete for your project? Are there any roles you want to add or remove?"

### Step 5: Fill CLAUDE.md

After collecting all answers, automatically update CLAUDE.md by replacing the placeholder sections:
- `[PROJECT_NAME]` → actual project name
- `[PROJECT_GOAL]` → actual project goal
- `[PRIMARY_LANGUAGE]` → chosen language(s)
- `[PARALLEL_PREFERENCE]` → yes/no + style
- Remove agents that were excluded, keep those confirmed

Confirm: "Your project is configured. CLAUDE.md has been updated. Ready to start building!"

## Remember
- Always ask one section at a time — do not dump all questions at once
- If the user seems unsure, offer concrete recommendations
- After filling CLAUDE.md, run a quick summary of the configuration
