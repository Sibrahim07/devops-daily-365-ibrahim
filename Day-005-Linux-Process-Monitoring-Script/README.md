# Day 05 - Linux Process Monitoring Script

## About This Project

Today I created a Bash script to monitor running processes on a Linux machine.

When an application becomes slow or a server starts consuming more resources than expected, one of the first things I check is the list of running processes. This script provides a quick overview of the system by showing the total number of processes and listing the processes using the most CPU and memory.

---

# What is Process Monitoring?

A process is simply a program that is currently running.

Linux systems can run hundreds or even thousands of processes at the same time. Monitoring these processes helps identify applications that consume excessive CPU or memory, making troubleshooting much easier. The `ps` utility is one of the standard Linux tools for viewing process information. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is a Process?

A process is an active instance of a program.

Examples:

- Google Chrome
- Docker
- Nginx
- Jenkins
- MySQL

Each running process has its own unique Process ID (PID).

---

## What is PID?

PID stands for **Process ID**.

Every process running in Linux is assigned a unique number.

Example:

```bash
ps -ef
```

Sample Output

```text
UID        PID    PPID   CMD

root         1       0   systemd
ubuntu    1245       1   sshd
ubuntu    2150    1245   bash
```

---

## What is the `ps` Command?

The `ps` command displays information about currently running processes.

Example:

```bash
ps -ef
```

Useful options:

| Command | Description |
|---------|-------------|
| ps -e | Show all running processes |
| ps -ef | Full process information |
| ps aux | BSD-style process listing |
| ps -eo | Display selected columns |

The `ps` command produces a snapshot of active processes and supports custom output formats for scripting. :contentReference[oaicite:2]{index=2}

---

## Sorting Processes

Show highest CPU usage

```bash
ps -eo pid,user,%cpu,comm --sort=-%cpu
```

Show highest Memory usage

```bash
ps -eo pid,user,%mem,comm --sort=-%mem
```

---

# Project Files

```
Day-005-Linux-Process-Monitoring-Script/

├── README.md
├── process-monitor.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Ubuntu / CentOS / Amazon Linux
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
cd Day-005-Linux-Process-Monitoring-Script
```

Give execute permission

```bash
chmod +x process-monitor.sh
```

Run the script

```bash
./process-monitor.sh
```

---

# Sample Output

```text
==================================
 Linux Process Monitoring
==================================

Total Running Processes
286

Top 10 Processes by CPU Usage

PID     USER      %CPU   %MEM   COMMAND

2451    ubuntu    32.1   4.3    chrome
1120    root       8.4   1.2    dockerd
1510    ubuntu     4.5   2.0    code

Top 10 Processes by Memory Usage

PID     USER      %CPU   %MEM   COMMAND

2451    ubuntu    32.1   4.3    chrome
3010    mysql      1.3   3.8    mysqld
1120    root       8.4   1.2    dockerd
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| ps | Display running processes |
| wc | Count total processes |
| head | Display first few lines |
| sort | Sort output |
| echo | Print formatted messages |

---

# Real-World Use Case

During production incidents, engineers often begin by checking which processes are consuming the most resources. If a Java application, Docker container, or database starts using excessive CPU or memory, commands like `ps` help quickly identify the affected process before restarting services or scaling infrastructure. Many monitoring platforms later automate this visibility, but `ps` remains a core troubleshooting tool. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- What a Linux process is
- Understanding Process IDs (PID)
- Using the `ps` command
- Sorting processes by CPU usage
- Sorting processes by memory usage
- Writing a Bash script to monitor processes

---

# Interview Questions

1. What is a process in Linux?
2. What is the difference between a process and a service?
3. What is a PID?
4. What is the difference between `ps -ef` and `ps aux`?
5. How do you find the highest CPU-consuming process?
6. Which command do you use to terminate a process?

---

# Next Improvement

In the next version, I plan to:

- Search processes by name using `pgrep`
- Kill a process safely using `pkill`
- Export process information to a log file
- Monitor a specific process continuously
