# Day 17 - Git Repository and Basic Commands

## About This Project

Today I learned how a Git repository works and explored the Git commands that developers use every day.

After installing and configuring Git, the next step is understanding how Git tracks files and records changes. In this project, I created a repository, added files, checked their status, committed changes, and viewed commit history.

These commands form the foundation of daily Git usage.

---

# What is a Git Repository?

A Git repository is a project directory that Git uses to track files and their history.

When you run:

```bash
git init
```

Git creates a hidden folder called:

```
.git
```

This folder stores:

- Commit history
- Branch information
- Repository configuration
- Tags
- References

The `.git` directory contains all repository metadata and history, making Git repositories self-contained. 

---

# Theory

## Git Workflow

```
Working Directory
        │
        ▼
git add
        │
        ▼
Staging Area
        │
        ▼
git commit
        │
        ▼
Local Repository
        │
        ▼
GitHub (Remote Repository)
```

---

## Working Directory

The Working Directory contains the files you are currently editing.

Example

```
README.md
main.py
Dockerfile
```

Changes made here are **not tracked** until you stage them.

---

## Staging Area

The Staging Area acts as a preparation area before creating a commit.

Add files

```bash
git add README.md
```

Add all files

```bash
git add .
```

---

## Commit

A commit is a snapshot of your project at a specific point in time.

Create a commit

```bash
git commit -m "Added README file"
```

Each commit has a unique SHA-1 hash that identifies it in the repository history. 

---

## Repository Status

Check current repository status

```bash
git status
```

This command shows:

- Modified files
- Untracked files
- Staged files
- Current branch

---

## Commit History

View commit history

```bash
git log
```

Short version

```bash
git log --oneline
```

---

## Difference Between git status and git diff

| git status | git diff |
|------------|----------|
| Shows file status | Shows actual code changes |
| Quick summary | Detailed comparison |
| Doesn't display modified lines | Displays modified lines |

---

## Git Repository Structure

```
git-demo/

├── README.md

└── .git/

      ├── objects/

      ├── refs/

      ├── HEAD

      ├── config

      └── logs/
```

---

# Project Files

```
Day-017-Git-Repository-and-Basic-Commands/

├── README.md
├── git-basic-commands.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Git Installed
- Linux / Windows / macOS
- Terminal

---

# How to Run

Clone repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into project

```bash
cd Day-017-Git-Repository-and-Basic-Commands
```

Give execute permission

```bash
chmod +x git-basic-commands.sh
```

Run script

```bash
./git-basic-commands.sh
```

---

# Sample Output

```text
=========================================
 Git Repository and Basic Commands Demo
=========================================

Git Version

git version 2.43.0

Repository Status

On branch main

nothing to commit, working tree clean

Recent Commit History

e3f52ab Initial commit

Tracked Files

README.md

Current Branch

* main
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| git init | Initialize repository |
| git status | Check repository status |
| git add | Stage files |
| git commit | Save changes |
| git log | View commit history |
| git diff | Show changes |
| git ls-files | List tracked files |

---

# Real-World Use Case

Suppose you're working on a Kubernetes deployment.

Before committing changes, you would:

- Check modified files using `git status`
- Review changes using `git diff`
- Stage only the required files
- Create a meaningful commit
- Push the changes to GitHub

This workflow is followed by developers and DevOps engineers in almost every software project.

---

# What I Learned

- What a Git repository is
- Working Directory
- Staging Area
- Local Repository
- Using `git status`
- Using `git diff`
- Viewing commit history
- Understanding Git workflow

---

# Interview Questions

1. What is a Git repository?
2. What is stored inside the `.git` folder?
3. What is the difference between the Working Directory and the Staging Area?
4. What is the purpose of `git status`?
5. What is the difference between `git status` and `git diff`?
6. Why do we create commits?

---

# Next Improvement

In the next project, I will cover:

- Git branching
- Creating branches
- Switching branches
- Merging branches
- Branch management best practices