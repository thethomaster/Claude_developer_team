# Git Workflow

## Commit Message Format
```
<type>: <description>

<optional body>
```

Types: feat, fix, refactor, docs, test, chore, perf, ci

Note: Attribution disabled globally via ~/.claude/settings.json.

## Commit Strategy — ALWAYS follow this

**One logical change per commit.** Never bundle unrelated changes into a single commit.

- Each bug fix, refactor, config change, or UI tweak gets its own commit
- If a task touches 3+ files for different reasons, split it into separate commits per concern
- This makes `git revert` and `git bisect` reliable — every commit should be a safe rollback point
- Commit often; squashing is for PRs, not for local history

**Examples:**
- fix(auth): correct token expiry check → separate from → refactor(api): extract helper
- feat(dashboard): add filter panel → separate from → style(dashboard): adjust spacing

## Pull Request Workflow

**PRs are only for new features or new functions.** Do not open a PR for bug fixes, refactors, config changes, or chores — commit directly to the branch.

When creating PRs:
1. Analyze full commit history (not just latest commit)
2. Use `git diff [base-branch]...HEAD` to see all changes
3. Draft comprehensive PR summary
4. Include test plan with TODOs
5. Push with `-u` flag if new branch

> For the full development process (planning, TDD, code review) before git operations,
> see [development-workflow.md](./development-workflow.md).
