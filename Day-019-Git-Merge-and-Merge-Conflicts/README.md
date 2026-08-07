# Day 19 - Git Merge and Merge Conflicts

## About This Project

Today I learned how Git merges branches and how merge conflicts occur.

When multiple developers work on different branches, their changes eventually need to be combined. Git usually merges these changes automatically. However, if two people modify the same part of a file differently, Git cannot decide which version should be kept. This situation is called a merge conflict.

In this project, I practiced both a successful merge and resolving a merge conflict manually.

---

# What is Git Merge?

Git Merge combines changes from one branch into another.

Example

```
feature-login

↓

main
```

Merge command

```bash
git merge feature-login
```

Git creates a new commit when necessary to combine the histories of the two branches. In some cases, Git can perform a fast-forward merge instead. 

---

# Theory

## Successful Merge

Example

```
main

A ----- B

             \
              C

feature-login

```

Merge

```
A ----- B ------- D

             \   /

              C

```

---

## What is a Merge Conflict?

A merge conflict happens when Git cannot automatically combine changes.

This usually happens when:

- Two developers edit the same line
- One branch deletes a file while another modifies it
- File renames conflict

Git pauses the merge and asks you to resolve the conflict manually. 

---

## Conflict Markers

Git adds markers like:

```text
<<<<<<< HEAD

Current Branch

=======

Incoming Branch

>>>>>>> feature-login
```

These markers help identify the conflicting sections.

---

## How to Resolve a Conflict

1. Open the conflicted file.
2. Review the conflicting changes.
3. Keep the correct content.
4. Remove the conflict markers.
5. Save the file.
6. Stage the file.
7. Commit the resolution.

---

## Fast-Forward Merge vs Three-Way Merge

| Fast-Forward | Three-Way Merge |
|---------------|-----------------|
| No merge commit created | Creates a merge commit |
| Branch history is linear | Branch history is preserved |
| Happens when no new commits exist on the target branch | Happens when both branches have diverged |

Git automatically chooses the appropriate merge strategy based on the commit history. 

---

# Project Files

```
Day-019-Git-Merge-and-Merge-Conflicts/

├── README.md
├── merge-demo.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Git Installed
- Existing Git Repository
- Basic understanding of branches

---

# How to Run

Clone repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into project

```bash
cd Day-019-Git-Merge-and-Merge-Conflicts
```

Give execute permission

```bash
chmod +x merge-demo.sh
```

Run

```bash
./merge-demo.sh
```

---

# Sample Output

```text
===========================================
 Git Merge and Merge Conflict Demonstration
===========================================

Current Branch

main

Merging feature-login into main...

Merge made successfully.

Commit History

* Merge feature-login
* Added Login Feature
* Initial Commit
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| git merge | Merge branches |
| git switch | Change branches |
| git add | Stage resolved file |
| git commit | Save merge or conflict resolution |
| git log --graph | View branch history |

---

# Real-World Use Case

Imagine two developers working on the same application.

- Developer A updates the login page.
- Developer B updates the same file to improve validation.

When both changes are merged, Git may detect a conflict if they modified the same lines. The team reviews the differences, resolves the conflict, tests the application, and commits the merged result.

Merge conflicts are a normal part of collaborative development and are usually resolved during feature integration or pull request reviews.

---

# What I Learned

- What Git Merge is
- How Git combines branches
- What merge conflicts are
- How to resolve conflicts
- Fast-forward merge
- Three-way merge
- Viewing merge history

---

# Interview Questions

1. What is Git Merge?
2. What is a merge conflict?
3. Why do merge conflicts occur?
4. How do you resolve a merge conflict?
5. What is the difference between a fast-forward merge and a three-way merge?
6. How do you view branch history in Git?

---

# Next Improvement

In the next project, I will cover:

- Git Rebase
- Interactive Rebase
- Squash Commits
- Rebase vs Merge
- Best practices for maintaining clean commit history