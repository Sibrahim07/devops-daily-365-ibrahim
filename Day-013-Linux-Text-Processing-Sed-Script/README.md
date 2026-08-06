# Day 13 - Linux Text Processing using sed

## About This Project

Today I learned how to edit text files using the `sed` command.

Unlike `grep`, which is mainly used for searching text, `sed` can modify text by replacing words, deleting lines, inserting new lines, or updating configuration files.

In this project, I created a simple Bash script that replaces a word in a text file. Before saving any changes, the script previews the updated content and then asks for confirmation. It also creates a backup of the original file.

---

# What is sed?

`sed` stands for **Stream Editor**.

It processes text line by line without opening the file in an interactive editor.

`sed` is commonly used to:

- Replace text
- Delete lines
- Insert new lines
- Update configuration files
- Automate repetitive text editing

It is one of the most commonly used Linux text-processing tools alongside `grep` and `awk`. :contentReference[oaicite:1]{index=1}

---

# Theory

## Basic Syntax

```bash
sed 's/old/new/' filename
```

Example

```bash
sed 's/Linux/Ubuntu/' sample.txt
```

This replaces the **first** occurrence of "Linux" on each line.

---

## Replace All Occurrences

```bash
sed 's/Linux/Ubuntu/g' sample.txt
```

The `g` flag means **global**, so every matching occurrence on the same line is replaced. :contentReference[oaicite:2]{index=2}

---

## Edit File Directly

```bash
sed -i 's/Linux/Ubuntu/g' sample.txt
```

---

## Edit with Backup

```bash
sed -i.bak 's/Linux/Ubuntu/g' sample.txt
```

This updates the file and creates a backup named:

```
sample.txt.bak
```

Using `-i.bak` is a safer approach because it preserves the original file. :contentReference[oaicite:3]{index=3}

---

## Delete a Line

Delete line 2

```bash
sed '2d' sample.txt
```

---

## Print Specific Line

Print line 3

```bash
sed -n '3p' sample.txt
```

---

## Replace Only Line 2

```bash
sed '2 s/Linux/Ubuntu/' sample.txt
```

---

## Insert Text Before Line 1

```bash
sed '1i Welcome Everyone' sample.txt
```

---

## Append Text After Line 2

```bash
sed '2a Happy Learning!' sample.txt
```

---

# Difference Between grep, sed and awk

| Command | Purpose |
|---------|---------|
| grep | Search text |
| sed | Edit and transform text |
| awk | Process columns and fields |

---

# Project Files

```
Day-013-Linux-Text-Processing-Sed-Script/

├── README.md
├── sed-editor.sh
├── sample.txt
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Ubuntu / Debian / Rocky Linux
- Bash
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Go to the project

```bash
cd Day-013-Linux-Text-Processing-Sed-Script
```

Give execute permission

```bash
chmod +x sed-editor.sh
```

Run the script

```bash
./sed-editor.sh
```

---

# Sample Output

```text
=======================================
 Linux Text Processing using sed
=======================================

Original File

Welcome to DevOps.

Linux is powerful.

Linux is widely used in cloud computing.

Enter word to replace:
Linux

Enter new word:
Ubuntu

Preview

Welcome to DevOps.

Ubuntu is powerful.

Ubuntu is widely used in cloud computing.

Do you want to save changes? (yes/no):
yes

Changes saved.
Backup created as sample.txt.bak
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| sed | Edit text |
| sed -i | Modify file in place |
| sed -i.bak | Modify file and keep backup |
| cat | Display file contents |
| read | Accept user input |

---

# Real-World Use Case

`sed` is commonly used during deployments and server automation.

Some practical examples include:

- Updating application configuration files
- Replacing old IP addresses with new ones
- Changing environment variables
- Updating Kubernetes YAML files
- Replacing Docker image tags in deployment manifests

Because `sed` can be combined with shell scripts, it's widely used in CI/CD pipelines and automation tasks. :contentReference[oaicite:4]{index=4}

---

# What I Learned

- What `sed` is
- Search and replace text
- Edit files safely using backups
- Delete and insert lines
- Preview changes before saving
- Automate text editing with Bash

---

# Interview Questions

1. What is the difference between `grep` and `sed`?
2. What does the `g` flag mean in `sed`?
3. What is the purpose of the `-i` option?
4. Why would you use `-i.bak` instead of `-i`?
5. How do you delete a specific line using `sed`?
6. Where have you used `sed` in automation or DevOps?

---

# Next Improvement

In the next version, I plan to:

- Replace text using regular expressions
- Update multiple files at once
- Combine `find` and `sed`
- Modify YAML configuration files
- Build a configuration update automation script