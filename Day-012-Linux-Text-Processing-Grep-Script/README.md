# Day 12 - Linux Text Processing using grep

## About This Project

Today I learned how to search text using the `grep` command.

Searching log files is something DevOps engineers do almost every day. Whether it's finding an error message, checking failed login attempts, or verifying application logs, `grep` makes searching thousands of lines fast and simple.

In this project, I created a Bash script that searches a log file for a keyword entered by the user and displays all matching lines along with the total number of matches.

---

# What is grep?

`grep` stands for **Global Regular Expression Print**.

It searches files or command output for lines that match a given pattern.

It is one of the most commonly used Linux commands for:

- Log analysis
- Troubleshooting
- Configuration file searches
- Finding application errors
- Filtering command output

`grep` can search for simple text or complex regular expressions and is commonly combined with other commands using pipes. :contentReference[oaicite:1]{index=1}

---

# Theory

## Basic Syntax

```bash
grep "pattern" filename
```

Example

```bash
grep "ERROR" sample.log
```

---

## Common grep Options

| Option | Description |
|---------|-------------|
| -i | Ignore case |
| -n | Show line numbers |
| -c | Count matching lines |
| -v | Show lines that do not match |
| -r | Search recursively |
| -w | Match whole words only |
| -E | Use extended regular expressions |

These options are among the most frequently used when searching logs and configuration files. :contentReference[oaicite:2]{index=2}

---

## Practical Examples

Search for ERROR

```bash
grep ERROR sample.log
```

Ignore case

```bash
grep -i error sample.log
```

Show line numbers

```bash
grep -n ERROR sample.log
```

Count matches

```bash
grep -c INFO sample.log
```

Search recursively

```bash
grep -r "database" .
```

Invert match

```bash
grep -v INFO sample.log
```

---

## Why is grep Important?

In production environments, log files can contain thousands of lines.

Instead of opening the entire file and searching manually, `grep` helps engineers quickly locate:

- Application errors
- Failed login attempts
- Warning messages
- Database connection issues
- HTTP status codes

---

# Project Files

```
Day-012-Linux-Text-Processing-Grep-Script/

├── README.md
├── grep-search.sh
├── sample.log
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
cd Day-012-Linux-Text-Processing-Grep-Script
```

Give execute permission

```bash
chmod +x grep-search.sh
```

Run the script

```bash
./grep-search.sh
```

---

# Sample Output

```text
=======================================
 Linux Text Processing using grep
=======================================

Enter keyword to search: ERROR

Searching for 'ERROR'...

4: ERROR Redis Connection Failed
6: ERROR Database Timeout

Total Matches
2
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| grep | Search text patterns |
| grep -i | Ignore case sensitivity |
| grep -n | Display line numbers |
| grep -c | Count matches |
| grep -v | Exclude matching lines |
| grep -r | Search directories recursively |

---

# Real-World Use Case

Suppose a production application is returning HTTP 500 errors.

Instead of reading a large log file manually, a DevOps engineer can quickly search for relevant entries:

```bash
grep -i "ERROR" /var/log/application.log
```

or monitor new errors in real time:

```bash
tail -f /var/log/application.log | grep ERROR
```

Using `grep` together with commands like `tail`, `find`, and `awk` is a common workflow for troubleshooting Linux servers. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- What grep is
- Basic grep syntax
- Searching text in files
- Counting matches
- Showing line numbers
- Ignoring case sensitivity
- Writing a simple grep automation script

---

# Interview Questions

1. What is the purpose of the `grep` command?
2. What does the `-i` option do?
3. What is the difference between `grep` and `find`?
4. How do you count matching lines using `grep`?
5. How do you search recursively using `grep`?
6. How would you search for ERROR messages in a production log file?

---

# Next Improvement

In the next version, I plan to:

- Search multiple log files
- Use regular expressions
- Export search results to a report
- Highlight matching text
- Search compressed log files