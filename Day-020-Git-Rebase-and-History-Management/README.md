# Day 20 - Git Rebase and History Management

## About This Project

Today I learned how to use **Git Rebase** to maintain a clean and linear commit history.

When working in a team, multiple developers create commits on different branches. Git provides two ways to combine these changes: **Merge** and **Rebase**.

Although both achieve the same goal, they produce different commit histories. In this project, I practiced rebasing a feature branch onto the latest `main` branch and learned when rebasing is appropriate.

---

# What is Git Rebase?

Git Rebase moves or reapplies commits from one branch on top of another branch.

Instead of creating a merge commit, Git rewrites the commit history to make it appear as if your work started from the latest commit on the target branch.

Example

```
Before Rebase

main

A ---- B ---- C

      \
       D ---- E

feature-login
```

After Rebase

```
main

A ---- B ---- C ---- D' ---- E'

feature-login
```

The original commits are replayed on top of the latest commit from the target branch.

---

# Theory

## Merge vs Rebase

### Merge

```
main

A ---- B ---- C

      \       \

       D ---- E ---- M
```

- Preserves complete branch history
- Creates a merge commit
- Easy to understand

---

### Rebase

```
main

A ---- B ---- C ---- D' ---- E'
```

- Linear history
- No extra merge commit
- Cleaner Git log

---

# Why Use Rebase?

Rebase is useful when you want:

- A clean commit history
- Easier code reviews
- A linear Git log
- To update your feature branch with the latest changes from `main`

---

# Important Commands

## Check Current Branch

```bash
git branch
```

---

## Switch to Feature Branch

```bash
git switch feature-login
```

---

## Update Main Branch

```bash
git switch main

git pull origin main
```

---

## Switch Back

```bash
git switch feature-login
```

---

## Rebase Feature Branch

```bash
git rebase main
```

Git takes your commits from the current branch and reapplies them on top of the latest commit from `main`.

---

## View Commit History

```bash
git log --oneline --graph --all
```

---

# Interactive Rebase

Interactive rebase allows you to edit commit history.

Example

```bash
git rebase -i HEAD~3
```

This opens an editor where you can:

- Pick commits
- Reword commit messages
- Squash commits
- Edit commits
- Remove commits

---

# Squash Commits

Suppose your history looks like this:

```
Added Login UI

Fixed Login Button

Fixed CSS

Fixed Validation
```

Using interactive rebase, these can be combined into:

```
Added Login Feature
```

This keeps the repository history clean before creating a Pull Request.

---

# Rebase Conflict

Sometimes Git cannot replay a commit automatically.

Git displays a conflict message like:

```
CONFLICT (content): Merge conflict in app.txt
```

Resolve the file, then continue:

```bash
git add app.txt

git rebase --continue
```

Abort the rebase if needed:

```bash
git rebase --abort
```

Git pauses the rebase when conflicts occur so you can resolve them before continuing. Git also provides `--skip` and `--abort` options for handling problematic commits. Git's official documentation explains these recovery commands. ([git-scm.com](https://git-scm.com/docs/git-rebase?utm_source=chatgpt.com))

---

# Project Structure

```
Day-020-Git-Rebase-and-History-Management/

├── README.md
└── screenshots/
```

---

# Prerequisites

- Git Installed
- Existing Git Repository
- Basic knowledge of branches and merge

---

# Practice Steps

### Create Feature Branch

```bash
git switch -c feature-login
```

---

### Make Changes

```bash
echo "Login Module" > login.txt

git add .

git commit -m "Added Login Module"
```

---

### Update Main

```bash
git switch main

echo "Project Updated" >> README.md

git add .

git commit -m "Updated README"
```

---

### Rebase Feature Branch

```bash
git switch feature-login

git rebase main
```

---

### Verify History

```bash
git log --oneline --graph --all
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| git rebase | Reapply commits on another branch |
| git rebase -i | Interactive rebase |
| git rebase --continue | Continue after resolving conflicts |
| git rebase --abort | Cancel rebase |
| git log --graph | View commit history |
| git switch | Switch branches |

---

# Real-World Use Case

Imagine you're working on a feature branch for several days.

Meanwhile, other developers merge new features into the `main` branch.

Before opening a Pull Request, you rebase your feature branch onto the latest `main` branch. This helps ensure you're working with the most recent code and produces a cleaner project history.

Many teams use this workflow before submitting code for review, while others prefer merge-based workflows. The choice depends on team conventions.

---

# What I Learned

- What Git Rebase is
- Difference between Merge and Rebase
- Interactive Rebase
- Squashing commits
- Resolving rebase conflicts
- Maintaining a clean Git history

---

# Interview Questions

1. What is Git Rebase?
2. What is the difference between Merge and Rebase?
3. When would you use Rebase instead of Merge?
4. What is Interactive Rebase?
5. What is Squashing in Git?
6. What does `git rebase --continue` do?
7. How do you abort a rebase?

---

# Best Practices

- Rebase your own feature branches before creating a Pull Request.
- Avoid rebasing shared branches that other developers are actively using, because rebase rewrites commit history.
- Use interactive rebase to clean up commit history before code review.
- Review your commit history with `git log --graph --oneline` before pushing changes.

---

# Next Improvement

In the next project, I will cover:

- Git Stash
- Saving temporary work
- Applying stashed changes
- Managing multiple stashes
- Real-world development workflow