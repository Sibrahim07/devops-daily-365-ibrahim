# Day 10 - Linux File Search and Management Script

## About This Project

Today I created a Bash script to search for files in Linux.

As Linux servers grow, they can contain thousands or even millions of files. Finding a specific file manually becomes difficult and time-consuming. This script allows you to search for files by name inside any directory.

The goal of this project is to understand how the `find` command works and how it can be used in automation scripts.

---

# What is File Searching?

File searching is the process of locating files or directories based on different conditions.

Linux provides powerful tools to search files by:

- Name
- File type
- Size
- Owner
- Permission
- Last modified date

The `find` command searches the live filesystem, while `locate` searches a prebuilt database and is usually faster but may not reflect recent changes. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is the `find` Command?

The `find` command searches files and directories recursively.

Basic Syntax

```bash
find <path> <options>
```

Example

```bash
find /home -name "*.txt"
```

This command searches for all `.txt` files inside `/home`.

---

## Search by File Name

```bash
find . -name "notes.txt"
```

---

## Search by Extension

```bash
find . -name "*.log"
```

---

## Search Only Directories

```bash
find . -type d
```

---

## Search Only Files

```bash
find . -type f
```

---

## Search Empty Files

```bash
find . -type f -empty
```

---

## Search Files Larger Than 100 MB

```bash
find . -size +100M
```

---

## Search Modified in Last 7 Days

```bash
find . -mtime -7
```

---

## Difference Between `find` and `locate`

| find | locate |
|------|--------|
| Searches the live filesystem | Searches a database |
| Slower | Faster |
| Always up to date | Database must be refreshed |
| Supports advanced filters | Best for quick name searches |

`locate` depends on a file database that is updated by `updatedb`, so its results can be outdated if the database hasn't been refreshed. :contentReference[oaicite:2]{index=2}

---

# Project Files

```
Day-010-Linux-File-Search-and-Management-Script/

├── README.md
├── file-search.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Ubuntu / Debian / Rocky Linux / CentOS
- Bash
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into the project

```bash
cd Day-010-Linux-File-Search-and-Management-Script
```

Give execute permission

```bash
chmod +x file-search.sh
```

Run the script

```bash
./file-search.sh
```

---

# Sample Output

```text
==========================================
 Linux File Search & Management
==========================================

Enter directory to search: /home
Enter file name: *.log

Searching...

/home/ubuntu/app.log
/home/ubuntu/logs/error.log

Search completed.
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| find | Search files and directories |
| -name | Search by file name |
| -type | Filter by file or directory |
| -size | Search by file size |
| -mtime | Search by modification time |
| echo | Print messages |
| read | Accept user input |

---

# Real-World Use Case

Imagine you're troubleshooting a production server and need to find all application log files before investigating an issue.

Instead of manually checking every directory, you can use the `find` command to quickly locate log files, configuration files, backup archives, or deployment scripts.

DevOps engineers frequently use `find` while debugging applications, cleaning old files, rotating logs, and automating maintenance tasks. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- How to search files in Linux
- Using the `find` command
- Difference between `find` and `locate`
- Searching by name, type, size, and date
- Writing a simple interactive Bash script

---

# Interview Questions

1. What is the difference between `find` and `locate`?
2. How do you search for all `.log` files?
3. How do you search only directories?
4. How do you find files larger than 100 MB?
5. How do you search files modified in the last 7 days?
6. Which command would you use to search the live filesystem?

---

# Next Improvement

In the next version, I plan to:

- Delete old log files automatically
- Search files by owner
- Search files by permissions
- Export search results to a CSV file
- Add support for multiple search filters