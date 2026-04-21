## Configuration Commands

| Command | Use |
|---------|-----|
| `git config --global user.name "Name"` | Set global username |
| `git config --global user.email "email"` | Set global email |
| `git config --list` | View all configurations |
| `git config --global core.editor "vim"` | Set default editor |
| `git config --global init.defaultBranch main` | Set default branch name |

---

## Repository Setup

| Command | Use |
|---------|-----|
| `git init` | Initialize new repository |
| `git init -b main` | Initialize with custom branch name |
| `git clone <url>` | Clone repository |
| `git clone <url> <directory>` | Clone to specific directory |
| `git clone -b <branch> <url>` | Clone specific branch |
| `git clone --depth 1 <url>` | Shallow clone (limited history) |

---

## Checking Status & Changes

| Command | Use |
|---------|-----|
| `git status` | Show working tree status |
| `git status -s` | Short status output |
| `git diff` | Show unstaged changes |
| `git diff --staged` | Show staged changes |
| `git diff <branch1> <branch2>` | Compare branches |
| `git diff <commit1> <commit2>` | Compare commits |
| `git show <commit>` | Show specific commit details |
| `git show <commit>:<file>` | Show file from specific commit |

---

## Staging Changes

| Command | Use |
|---------|-----|
| `git add <file>` | Stage specific file |
| `git add .` | Stage all changes |
| `git add -A` | Stage all changes everywhere |
| `git add -p` | Stage interactively (choose hunks) |
| `git add -u` | Stage only modified tracked files |
| `git add *.js` | Stage files by pattern |
| `git reset <file>` | Unstage file |
| `git reset` | Unstage all files |

---

## Committing Changes

| Command | Use |
|---------|-----|
| `git commit -m "message"` | Commit with message |
| `git commit -m "title" -m "description"` | Multi-line commit message |
| `git commit -am "message"` | Add tracked files and commit |
| `git commit --amend` | Modify last commit |
| `git commit --amend --no-edit` | Amend without changing message |
| `git commit --author="Name <email>"` | Commit as different author |
| `git commit --no-verify` | Commit without running hooks |

---

## Viewing History

| Command | Use |
|---------|-----|
| `git log` | Show commit history |
| `git log --oneline` | Show concise history |
| `git log -5` | Show last 5 commits |
| `git log --author="name"` | Show commits by author |
| `git log --since="2 weeks ago"` | Show commits from time period |
| `git log -- <file>` | Show commits affecting file |
| `git log --stat` | Show statistics per commit |
| `git log -p` | Show full diff in history |
| `git log --graph --oneline --all` | Show visual graph |
| `git log main..develop` | Show commits between branches |
| `git reflog` | Show reference logs (HEAD history) |
| `git blame <file>` | Show who changed each line |

---

## Branch Operations

| Command | Use |
|---------|-----|
| `git branch` | List local branches |
| `git branch -a` | List all branches |
| `git branch <name>` | Create new branch |
| `git branch -m <old> <new>` | Rename branch |
| `git branch -d <name>` | Delete branch |
| `git branch -D <name>` | Force delete branch |
| `git push origin --delete <name>` | Delete remote branch |
| `git branch -vv` | Show tracking info |

---

## Switching Branches

| Command | Use |
|---------|-----|
| `git checkout <branch>` | Switch to branch |
| `git checkout -b <branch>` | Create and switch to branch |
| `git checkout -` | Switch to previous branch |
| `git checkout <commit> -- <file>` | Restore file from commit |
| `git switch <branch>` | Switch to branch (modern) |
| `git switch -c <branch>` | Create and switch (modern) |
| `git switch -` | Switch to previous branch (modern) |

---

## Restoring Files

| Command | Use |
|---------|-----|
| `git restore <file>` | Restore file to HEAD |
| `git restore .` | Restore all files |
| `git restore --staged <file>` | Unstage file |
| `git restore --source=<commit> <file>` | Restore from specific commit |
| `git checkout -- <file>` | Restore file (classic) |

---

## Undoing Changes

| Command | Use |
|---------|-----|
| `git reset --soft HEAD~1` | Undo commit, keep changes |
| `git reset --hard HEAD~1` | Undo commit, discard changes |
| `git reset --hard <commit>` | Reset to specific commit |
| `git revert <commit>` | Create commit that undoes change |
| `git revert HEAD` | Revert last commit |
| `git clean -n` | Preview untracked files to delete |
| `git clean -f` | Remove untracked files |
| `git clean -fd` | Remove untracked files and directories |
| `git clean -fdx` | Remove untracked and ignored files |

---

## Merging & Rebasing

| Command | Use |
|---------|-----|
| `git merge <branch>` | Merge branch into current |
| `git merge --no-ff <branch>` | Merge without fast-forward |
| `git merge --squash <branch>` | Merge squashing all commits |
| `git merge --abort` | Abort merge process |
| `git rebase <branch>` | Rebase on another branch |
| `git rebase -i HEAD~3` | Interactive rebase last 3 commits |
| `git rebase --continue` | Continue after resolving conflicts |
| `git rebase --abort` | Abort rebase |
| `git cherry-pick <commit>` | Apply specific commit |
| `git cherry-pick <commit1> <commit2>` | Apply multiple commits |

---

## Remote Operations

| Command | Use |
|---------|-----|
| `git remote` | List remotes |
| `git remote -v` | List remotes with URLs |
| `git remote add <name> <url>` | Add new remote |
| `git remote remove <name>` | Remove remote |
| `git remote rename <old> <new>` | Rename remote |
| `git remote set-url <name> <url>` | Change remote URL |
| `git remote show <name>` | Show remote details |

---

## Fetching & Pulling

| Command | Use |
|---------|-----|
| `git fetch` | Fetch from default remote |
| `git fetch <remote>` | Fetch from specific remote |
| `git fetch --all` | Fetch from all remotes |
| `git fetch --prune` | Fetch and remove deleted branches |
| `git pull` | Fetch and merge |
| `git pull <remote> <branch>` | Pull specific branch |
| `git pull --rebase` | Pull with rebase |
| `git pull --dry-run` | Simulate pull without changes |

---

## Pushing Changes

| Command | Use |
|---------|-----|
| `git push` | Push to default remote |
| `git push <remote> <branch>` | Push to specific remote and branch |
| `git push -u <remote> <branch>` | Push and set upstream |
| `git push --all` | Push all branches |
| `git push --tags` | Push all tags |
| `git push --force` | Force push (dangerous!) |
| `git push --force-with-lease` | Safe force push |
| `git push <remote> --delete <branch>` | Delete remote branch |
| `git push --no-verify` | Push without running hooks |

---

## Stashing

| Command | Use |
|---------|-----|
| `git stash` | Save changes temporarily |
| `git stash save "message"` | Stash with custom message |
| `git stash -u` | Stash including untracked files |
| `git stash list` | List all stashes |
| `git stash apply` | Apply latest stash |
| `git stash apply stash@{n}` | Apply specific stash |
| `git stash pop` | Apply and remove latest stash |
| `git stash drop stash@{n}` | Delete specific stash |
| `git stash clear` | Delete all stashes |
| `git stash show stash@{n}` | Show stash changes |
| `git stash branch <name>` | Create branch from stash |

---

## Tagging

| Command | Use |
|---------|-----|
| `git tag` | List all tags |
| `git tag <name>` | Create lightweight tag |
| `git tag -a <name> -m "message"` | Create annotated tag |
| `git tag -a <name> -m "msg" <commit>` | Tag specific commit |
| `git show <tag>` | Show tag details |
| `git tag -d <name>` | Delete local tag |
| `git push origin <tag>` | Push specific tag |
| `git push origin --tags` | Push all tags |
| `git push origin --delete <tag>` | Delete remote tag |
| `git tag -l "v1.*"` | List tags matching pattern |

---

## Searching & Finding

| Command | Use |
|---------|-----|
| `git grep "pattern"` | Search in tracked files |
| `git grep -i "pattern"` | Case-insensitive search |
| `git grep -n "pattern"` | Show line numbers |
| `git grep "pattern" <branch>` | Search in specific branch |
| `git log --grep="pattern"` | Search commit messages |
| `git log --author="name"` | Find commits by author |
| `git log -S "text"` | Find commits with text change |
| `git bisect start` | Start binary search for bug |
| `git blame <file>` | Show author of each line |

---

## Advanced Operations

| Command | Use |
|---------|-----|
| `git fsck` | Verify repository integrity |
| `git fsck --full` | Full repository check |
| `git gc` | Garbage collection |
| `git gc --aggressive` | Aggressive optimization |
| `git worktree list` | List worktrees |
| `git worktree add <path> <branch>` | Create worktree |
| `git worktree remove <path>` | Remove worktree |
| `git reflog` | Show reference history |
| `git reflog expire --expire=30.days` | Cleanup old reflog |

---

## Useful Aliases (Setup)

| Command | Use |
|---------|-----|
| `git config --global alias.st status` | Shortcut for status |
| `git config --global alias.co checkout` | Shortcut for checkout |
| `git config --global alias.br branch` | Shortcut for branch |
| `git config --global alias.ci commit` | Shortcut for commit |
| `git config --global alias.unstage 'reset HEAD --'` | Unstage shortcut |
| `git config --global alias.last 'log -1 HEAD'` | Show last commit |
| `git config --global alias.graph 'log --graph --oneline --all'` | Visual graph |
| `git config --global alias.amend 'commit --amend --no-edit'` | Amend shortcut |

---

## File-Specific Operations

| Command | Use |
|---------|-----|
| `git add <file>` | Stage file |
| `git rm <file>` | Remove file |
| `git mv <old> <new>` | Move/rename file |
| `git checkout -- <file>` | Discard file changes |
| `git restore <file>` | Restore file |
| `git log -- <file>` | Show file history |
| `git blame <file>` | Show file line authors |
| `git diff <file>` | Show file changes |
| `git show <commit>:<file>` | Show file from commit |

---

## Interactive Commands

| Command | Use |
|---------|-----|
| `git add -p` | Interactive add (patch mode) |
| `git rebase -i HEAD~n` | Interactive rebase |
| `git clean -i` | Interactive delete |
| `git bisect` | Interactive bug search |
| `git commit -v` | Verbose commit mode |

---

## Comparison Commands

| Command | Use |
|---------|-----|
| `git diff` | Unstaged vs HEAD |
| `git diff --staged` | Staged vs HEAD |
| `git diff <branch1> <branch2>` | Branch comparison |
| `git diff <commit1> <commit2>` | Commit comparison |
| `git diff HEAD~1` | Current vs previous |
| `git diff --word-diff` | Word-level diff |
| `git diff --stat` | Summary of changes |
| `git show <commit>` | Show commit changes |

---

## Synchronization Commands

| Command | Use |
|---------|-----|
| `git fetch` | Get updates from remote |
| `git pull` | Fetch and merge updates |
| `git push` | Send commits to remote |
| `git fetch --all` | Get all remote updates |
| `git pull --rebase` | Pull with rebase |
| `git push --all` | Push all branches |

---

## Cleanup & Maintenance

| Command | Use |
|---------|-----|
| `git clean -fd` | Remove untracked files |
| `git clean -fdx` | Remove all untracked files |
| `git fetch --prune` | Remove deleted remote branches |
| `git gc` | Optimize repository |
| `git reflog expire` | Cleanup reference logs |

---

## Help & Info

| Command | Use |
|---------|-----|
| `git help` | Show Git help |
| `git help <command>` | Show specific command help |
| `git --version` | Show Git version |
| `git config --list` | Show all configurations |
| `git remote -v` | Show all remotes |

---

## Quick Reference by Frequency

### Most Used (Daily)
```
git status
git add .
git commit -m "message"
git push
git pull
git log --oneline
git branch
git checkout <branch>
```

### Frequently Used
```
git diff
git merge
git stash
git rebase
git reset
git clone
git fetch
```

### Less Frequent (But Important)
```
git tag
git cherry-pick
git bisect
git worktree
git reflog
git gc
```

---

## Command Categories Summary

- **Setup**: config, init, clone
- **Status**: status, diff, show
- **Staging**: add, reset, restore
- **Committing**: commit, amend
- **History**: log, reflog, blame
- **Branches**: branch, checkout, switch
- **Merging**: merge, rebase, cherry-pick
- **Remote**: remote, fetch, pull, push
- **Temporary**: stash, clean
- **Tags**: tag
- **Searching**: grep, log (grep), bisect
- **Maintenance**: gc, fsck, worktree

---

**Total Commands:** 100+  
**Categories:** 12  
**Frequency Levels:** Daily, Frequent, Advanced
