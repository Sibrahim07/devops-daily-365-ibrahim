# Day 18 - Git Branching and Branch Management

## About This Project

Today I learned one of Git's most powerful features—**branching**.

Branching allows developers to work on new features, bug fixes, or experiments without affecting the main codebase. Once the work is complete and tested, the changes can be merged back into the main branch.

This is the standard workflow used by software development and DevOps teams.

---

# What is a Branch?

A branch is an independent line of development.

Instead of making changes directly on the `main` branch, developers create a new branch for their work.

For example:

- Feature development
- Bug fixes
- Hotfixes
- Release preparation
- Experiments

Branches help teams work in parallel without interfering with each other's changes. Git stores branches as lightweight references to commits, making branch creation fast. 

---

# Theory

## Why Do We Use Branches?

Imagine three developers are working on the same project.

Developer A

- Login Feature

Developer B

- Payment Feature

Developer C

- Bug Fix

If everyone worked directly on the `main` branch, changes could conflict.

Instead, each developer creates a separate branch.

Example

```
main

├── feature-login

├── feature-payment

└── bugfix-header
```

---

## Git Branch Workflow

```
main
 │
 ├───────────────┐
 │               │
 ▼               ▼

feature-login    feature-payment

 │               │
 │               │
 └──────Merge────┘

        ▼

      main
```

---

## Common Branch Commands

View branches

```bash
git branch
```

Current branch

```bash
git branch --show-current
```

Create branch

```bash
git branch feature-login
```

Switch branch

```bash
git switch feature-login
```

Create and switch

```bash
git switch -c feature-login
```

Delete branch

```bash
git branch -d feature-login
```

---

## Difference Between Main and Feature Branch

| Main Branch | Feature Branch |
|--------------|----------------|
| Stable code | New development |
| Production-ready | Work in progress |
| Shared by everyone | Usually owned by one developer |
| Receives merged changes | Eventually merged into main |

---

## Best Practices

- Keep `main` stable.
- Create a new branch for every feature or bug fix.
- Use meaningful branch names.
- Merge only after testing.
- Delete branches after successful merge.

---

# Project Files

```
Day-018-Git-Branching-and-Branch-Management/

├── README.md
├── git-branch-demo.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Git Installed
- Existing Git Repository
- Terminal

---

# How to Run

Clone repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into project

```bash
cd Day-018-Git-Branching-and-Branch-Management
```

Give execute permission

```bash
chmod +x git-branch-demo.sh
```

Run script

```bash
./git-branch-demo.sh
```

---

# Sample Output

```text
=========================================
 Git Branch Management Demo
=========================================

Current Branch

main

Available Branches

* main

Creating Branch: feature-login

Switching to feature-login

Current Branch

feature-login

Creating sample file

Commit created successfully.
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| git branch | List or create branches |
| git switch | Switch branches |
| git switch -c | Create and switch to a new branch |
| git merge | Merge branches |
| git branch -d | Delete a branch |
| git branch --show-current | Show current branch |

---

# Real-World Use Case

Suppose your team is building an e-commerce application.

- Developer 1 works on the login feature.
- Developer 2 develops the payment module.
- Developer 3 fixes checkout bugs.

Each developer creates a separate branch. Once the code is reviewed and tested, it is merged into the `main` branch. This keeps the production branch stable while allowing parallel development.

---

# What I Learned

- What a Git branch is
- Why branching is important
- Creating branches
- Switching between branches
- Merging branches
- Deleting branches
- Git branching best practices

---

# Interview Questions

1. What is a Git branch?
2. Why do we use feature branches?
3. What is the difference between `git switch` and `git checkout`?
4. How do you create and switch to a new branch?
5. What happens when you merge a branch into `main`?
6. Why should you avoid working directly on the `main` branch?

---

# Next Improvement

In the next project, I will cover:

- Merge conflicts
- Conflict resolution
- Fast-forward merge
- Three-way merge
- Merge strategies