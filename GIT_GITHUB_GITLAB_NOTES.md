# Git, GitHub, and GitLab Notes

## Table of Contents
1. Git Basics
2. Configuration
3. Basic Git Commands
4. Branching & Merging
5. Remotes & Collaboration
6. Undoing, Stashing, History
7. GitHub: Concepts & Workflows
8. GitLab: Concepts & Workflows
9. CI/CD: GitHub Actions & GitLab CI
10. Examples & Recipes
11. Best Practices
12. Resources

---

## 1. Git Basics
- Distributed version control system for tracking changes.
- Key terms: repository, commit, branch, merge, remote, tag.

## 2. Configuration
```bash
# Global
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
# Per-repo
git config user.name "Local Name"
```

## 3. Basic Git Commands
- `git init`, `git clone <url>`
- `git status`, `git diff`, `git add`, `git commit -m "msg"`
- `git log`, `git show`, `git blame`

## 4. Branching & Merging
- `git branch`, `git checkout -b feature`, `git switch -c feature`
- `git merge feature` (or `git rebase` as alternative)
- Resolve merge conflicts, `git merge --abort`

## 5. Remotes & Collaboration
- `git remote add origin <url>`
- `git fetch`, `git pull`, `git push -u origin <branch>`
- Fork vs upstream workflow: add `upstream` remote and sync

## 6. Undoing, Stashing, History
- `git restore <file>` or `git checkout -- <file>`
- `git reset --soft|--mixed|--hard <ref>`
- `git revert <commit>` to safely undo public commits
- `git stash`, `git stash pop`, `git stash apply`
- `git reflog` to recover lost commits

---

## 7. GitHub: Concepts & Workflows
### Key Concepts
- Repository (repo), Fork, Pull Request (PR), Issues, Projects, Actions

### Common Workflows
- Fork + PR: Fork -> clone -> branch -> push -> open PR
- Branch + PR: Create branch in repo -> push -> open PR

### Useful Commands
```bash
# Fork workflow
git remote add origin git@github.com:<you>/<repo>.git
git remote add upstream git@github.com:<upstream-owner>/<repo>.git
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

### PR Tips
- Keep PRs focused and small; include testing steps
- Use `git rebase -i` to tidy commits before pushing
- Use reviewers, labels, milestones, and templates
- Use branch protection and CODEOWNERS for required reviews

### GitHub Actions
- Workflows live in `.github/workflows/*.yml`
- Start with `actions/checkout@v4` then run build/test steps
- Use secrets for credentials and `actions/cache` for speedups

---

## 8. GitLab: Concepts & Workflows
### Key Concepts
- Project, Merge Request (MR), Pipelines, Runners, Groups

### Common Workflows
- Branch + MR or Fork + MR; push branch and open MR

### Useful Commands
```bash
git remote add origin git@gitlab.com:<you>/<project>.git
git remote add upstream git@gitlab.com:<upstream>/<project>.git
git fetch upstream
git checkout -b feature/my-feature
git push -u origin feature/my-feature
```

### Pipelines & CI
- Define `.gitlab-ci.yml` with `stages` and `jobs`
- Runners execute jobs; use artifacts to pass outputs
- Require passing pipelines for MR merges if desired

### MR Tips
- Use MR templates and description checklists
- Use approvals and protected branches for stricter workflows

---

## 9. CI/CD: GitHub Actions vs GitLab CI
- GitHub Actions: workflow YAMLs under `.github/workflows/`
- GitLab CI: pipeline YAML at `.gitlab-ci.yml`
- Both support matrix builds, caching, secrets, and deployment
- Choose based on platform hosting and feature needs

---

## 10. Examples & Quick Recipes
### Keep a fork up-to-date (both platforms)
```bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

### Create PR/MR from feature branch
```bash
git checkout -b feature/xyz
# make changes
git add -A
git commit -m "Add xyz"
git push -u origin feature/xyz
# Open PR (GitHub) or MR (GitLab) in web UI
```

### Squash before merging
```bash
git rebase -i HEAD~3
# mark commits as squash/fixup
git push -f origin feature/branch
```

---

## 11. Best Practices
- Commit small, logical changes with clear messages
- Pull/rebase before pushing to avoid unnecessary merge commits
- Use branches for features and fixes; protect main
- Use CI to validate changes before merging
- Avoid force-pushing shared branches unless coordinated
- Maintain a good `.gitignore`

---

## 12. Resources
- Official Git: https://git-scm.com/doc
- GitHub Docs: https://docs.github.com/
- GitLab Docs: https://docs.gitlab.com/
- Git Cheat Sheet: https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf

