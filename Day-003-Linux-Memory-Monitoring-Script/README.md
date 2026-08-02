# Day 03 - Linux Memory Monitoring Script

## About This Project

Today I created a simple Bash script to monitor system memory usage.

Memory is one of the most important resources on a Linux server. If RAM usage becomes too high, applications may slow down, services can crash, and the operating system may start using swap, which affects performance.

This script checks the current memory usage and displays a warning if it crosses a predefined threshold.



# What is Memory Monitoring?

Memory monitoring is the process of checking how much RAM is being used by the operating system and running applications.

Monitoring memory regularly helps identify performance issues before they impact users. The Linux `free` command is commonly used to view RAM and swap usage. :contentReference[oaicite:1]{index=1}



# Theory

## What is RAM?

RAM (Random Access Memory) is temporary memory used by the operating system and applications while they are running.

Unlike disk storage, RAM is much faster but loses its data when the system is powered off.



## Why is Memory Monitoring Important?

Monitoring memory helps you:

- Detect memory leaks
- Prevent application crashes
- Improve server performance
- Reduce downtime
- Plan future resource upgrades



## Understanding the `free` Command

The `free` command displays memory usage.

Run:

```bash
free -h
```

Sample Output

```text
              total        used        free      shared  buff/cache   available
Mem:           15Gi       5.1Gi       6.3Gi       500Mi       3.6Gi       9.5Gi
Swap:          2.0Gi         0B       2.0Gi
```

Important columns:

| Column | Description |
|---------|-------------|
| total | Total installed RAM |
| used | Memory currently in use |
| free | Completely unused memory |
| available | Memory available for new applications |
| Swap | Disk space used as virtual memory |

The `available` column is generally a better indicator of usable memory than the `free` column because Linux uses unused RAM for caching. :contentReference[oaicite:2]{index=2}



# Project Files

```
Day-003-Linux-Memory-Monitoring-Script/

├── README.md
├── memory-monitor.sh
├── output-example.txt
└── screenshots/
```



# Prerequisites

- Linux
- Bash
- Git



# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Go to the project

```bash
cd Day-003-Linux-Memory-Monitoring-Script
```

Give execute permission

```bash
chmod +x memory-monitor.sh
```

Run the script

```bash
./memory-monitor.sh
```



# Sample Output

```text
==================================
 Linux Memory Monitoring
==================================

Current Memory Usage: 42%

OK: Memory usage is under control.

Detailed Memory Information

              total        used        free
Mem:           15Gi       5.1Gi       6.3Gi
Swap:          2Gi         0B         2Gi
```



# Commands Used

| Command | Purpose |
|---------|---------|
| free -h | Display memory usage |
| awk | Calculate memory usage percentage |
| if | Compare threshold value |
| echo | Print output |



# Real-World Use Case

Memory monitoring is part of daily server health checks.

In production environments, monitoring tools like Prometheus, Grafana, Datadog, and CloudWatch continuously collect memory metrics and generate alerts when usage exceeds predefined thresholds. Bash scripts like this are useful for lightweight automation, cron jobs, or learning how these checks work before adopting full monitoring platforms. :contentReference[oaicite:3]{index=3}



# What I Learned

- How Linux manages memory
- Difference between RAM and Swap
- Using the `free` command
- Calculating memory usage with Bash
- Writing conditional logic in shell scripts



# Next Improvement

In the next version, I plan to:

- Add email alerts
- Log memory usage to a file
- Run the script automatically using cron
- Show the top 5 memory-consuming processes
