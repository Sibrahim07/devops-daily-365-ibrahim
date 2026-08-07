# Day 16 - Git Installation and Configuration

## About This Project

Today I started learning Git, one of the most important tools for version control.

Git helps developers track changes, collaborate with teams, and maintain the complete history of a project. Almost every DevOps tool, including GitHub, GitLab, Jenkins, Docker, Kubernetes, and Terraform, integrates with Git.

In this project, I installed Git, configured my user information, created my first repository, and made my first commit.

---

# What is Git?

Git is a distributed version control system developed by Linus Torvalds in 2005.

Instead of saving multiple copies of a project, Git records every change made to the files and allows developers to move between versions whenever required.

Git is used by individuals and teams to collaborate on software projects while maintaining a complete history of changes. Git is distributed, meaning every developer has a complete copy of the repository history. :contentReference[oaicite:2]{index=2}

---

# Theory

## Version Control

Version control is the practice of tracking changes made to source code or files over time.

Benefits:

- Track file history
- Restore previous versions
- Collaborate with teams
- Resolve conflicts
- Maintain project history

---

## Why Do We Use Git?

Without Git

- Multiple project copies
- Difficult collaboration
- No history tracking
- Risk of losing code

With Git

- Complete history
- Easy collaboration
- Fast branching
- Easy rollback
- Better code management

---

## Git Architecture

```

Working Directory

↓

Staging Area

↓

Local Repository

↓

Remote Repository (GitHub)

```

---

## Important Git Configuration

Set username

```bash
git config --global user.name "Your Name"
```

Set email

```bash
git config --global user.email "your-email@example.com"
```

View configuration

```bash
git config --list
```

Git stores these settings in your global Git configuration so future commits are associated with your identity. :contentReference[oaicite:3]{index=3}

---

## Configuration Levels

| Level | Description |
|---------|-------------|
| System | Applies to every user on the machine |
| Global | Applies to your user account |
| Local | Applies only to the current repository |

When settings conflict, local repository settings override global settings, and global settings override system settings. :contentReference[oaicite:4]{index=4}

---

## Common Git Commands

| Command | Purpose |
|---------|---------|
| git --version | Check installed version |
| git init | Initialize repository |
| git status | Check repository status |
| git add | Stage files |
| git commit | Save changes |
| git log | View commit history |
| git config | Configure Git |

---

# Project Files

```

Day-016-Git-Installation-and-Configuration/

├── README.md

├── install-git.sh

├── verify-git.sh

├── output-example.txt

└── screenshots/

```

---

# Prerequisites

- Ubuntu / Windows / macOS
- Terminal
- Internet connection

---

# How to Run

Clone repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move to project

```bash
cd Day-016-Git-Installation-and-Configuration
```

Give execute permission

```bash
chmod +x install-git.sh
chmod +x verify-git.sh
```

Run installation script

```bash
./install-git.sh
```

Run verification script

```bash
./verify-git.sh
```

---

# Sample Output

```text
=======================================
 Git Installation
=======================================

Git version 2.43.0

User Name

John Doe

Email

john@example.com

Default Branch

main
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| git --version | Check Git version |
| git config | Configure Git |
| git init | Create repository |
| git status | Check repository status |
| git add | Stage changes |
| git commit | Create commit |
| git log | View commit history |

---

# Real-World Use Case

Every software project begins by creating a Git repository.

Developers clone the repository, make changes locally, commit their work, and push changes to platforms like GitHub or GitLab. CI/CD tools such as Jenkins and GitHub Actions automatically detect new commits and trigger build, test, and deployment pipelines.

---

# What I Learned

- What Git is
- Why version control is important
- Installing Git
- Configuring Git
- Creating a repository
- Making the first commit

---

# Interview Questions

1. What is Git?
2. What is version control?
3. What is the difference between Git and GitHub?
4. What does `git init` do?
5. What is stored inside the `.git` directory?
6. What are the different Git configuration levels?

---

# Next Improvement

In the next project, I will cover:

- Git repository structure
- Working Directory
- Staging Area
- Local Repository
- Understanding `git status`
- Creating multiple commits