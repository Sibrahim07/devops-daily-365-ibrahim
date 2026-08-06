# Day 14 - Linux Text Processing using awk

## About This Project

Today I learned how to process structured text using the `awk` command.

Unlike `grep`, which searches for text, and `sed`, which edits text, `awk` is mainly used to work with columns and fields.

In this project, I created a simple Bash script that reads employee data, displays formatted output, counts the number of employees, calculates the average salary, and filters employees based on salary.

---

# What is awk?

`awk` is a text processing and reporting tool available on almost every Linux distribution.

It is commonly used for:

- Reading structured text
- Extracting columns
- Filtering records
- Generating reports
- Performing calculations
- Parsing log files

One of `awk`'s biggest strengths is that it automatically splits each input line into fields, allowing you to reference them as `$1`, `$2`, `$3`, and so on. :contentReference[oaicite:1]{index=1}

---

# Theory

## Basic Syntax

```bash
awk 'pattern { action }' filename
```

Example

```bash
awk '{print $1}' employees.txt
```

This prints only the first column.

---

## Understanding Fields

Example file

```text
101 Rahul DevOps 85000
```

| Field | Value |
|--------|-------|
| $1 | 101 |
| $2 | Rahul |
| $3 | DevOps |
| $4 | 85000 |

By default, `awk` treats whitespace as the field separator. A different separator can be specified with the `-F` option. :contentReference[oaicite:2]{index=2}

---

## Print Specific Columns

```bash
awk '{print $2,$3}' employees.txt
```

Output

```text
Rahul DevOps
Priya Developer
```

---

## Count Total Records

```bash
awk 'END {print NR}' employees.txt
```

`NR` represents the total number of records processed.

---

## Calculate Average

```bash
awk '{sum+=$4} END {print sum/NR}' employees.txt
```

---

## Filter Data

Show employees earning more than 70000

```bash
awk '$4>70000 {print $2,$4}' employees.txt
```

---

## Change Field Separator

CSV Example

```bash
awk -F "," '{print $2}' employees.csv
```

---

# Difference Between grep, sed and awk

| Command | Purpose |
|----------|----------|
| grep | Search text |
| sed | Edit text |
| awk | Process columns and generate reports |

---

# Project Files

```
Day-014-Linux-Text-Processing-Awk-Script/

├── README.md
├── awk-report.sh
├── employees.txt
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
cd Day-014-Linux-Text-Processing-Awk-Script
```

Give execute permission

```bash
chmod +x awk-report.sh
```

Run the script

```bash
./awk-report.sh
```

---

# Sample Output

```text
=======================================
 Linux Text Processing using awk
=======================================

Employee Details

101 Rahul DevOps 85000
102 Priya Developer 70000
103 Aman Tester 50000
104 Neha DevOps 90000
105 Karan Cloud 80000

Total Employees
5

Employees with Salary Greater Than 70000

101 Rahul 85000
104 Neha 90000
105 Karan 80000

Average Salary
75000
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| awk | Process structured text |
| print | Display fields |
| printf | Format output |
| NR | Count records |
| END | Execute after processing |
| -F | Set field separator |

---

# Real-World Use Case

DevOps engineers frequently use `awk` to process command output and logs.

Examples include:

- Displaying high CPU processes from `ps`
- Extracting IP addresses
- Parsing Kubernetes pod information
- Generating server health reports
- Reading CSV inventory files
- Processing application logs

Because `awk` combines filtering, calculations, and formatting, it's a common tool in shell automation and operational reporting. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- What `awk` is
- Working with fields (`$1`, `$2`, `$3`, `$4`)
- Using `NR` to count records
- Calculating values with `awk`
- Filtering rows based on conditions
- Creating simple reports

---

# Interview Questions

1. What is `awk` used for?
2. What is the difference between `grep`, `sed`, and `awk`?
3. What does `$1` represent in `awk`?
4. What is the purpose of `NR`?
5. How do you change the field separator?
6. Where have you used `awk` in Linux administration?

---

# Next Improvement

In the next version, I plan to:

- Read CSV files
- Generate formatted reports
- Parse Kubernetes command output
- Combine `grep`, `sed`, and `awk`
- Create a server health dashboard using Bash