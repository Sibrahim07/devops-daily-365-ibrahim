# Day 04 - Linux CPU Monitoring Script

## About This Project

Today I created a Bash script to monitor CPU usage on a Linux system.

High CPU usage can slow down applications, increase response time, and sometimes make a server unresponsive. This script checks the current CPU usage and lists the top five processes using the most CPU.

It's a simple script, but it's something I would actually use while troubleshooting a Linux server.

---

# What is CPU Monitoring?

CPU monitoring is the process of checking how much processor time is being used by the operating system and running applications.

Monitoring CPU usage helps identify applications that consume excessive resources before they affect system performance. Tools like `top`, `ps`, `mpstat`, and `vmstat` are commonly used by Linux administrators for this purpose. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is CPU Utilization?

CPU utilization is the percentage of time the processor spends executing tasks.

Example:

- 10% → System is mostly idle
- 40% → Normal workload
- 80% → High workload
- 100% → CPU is fully utilized

---

## What is the `top` Command?

`top` displays real-time information about:

- CPU usage
- Memory usage
- Running processes
- Load average
- System uptime

Run:

```bash
top
```

The `top` command provides a continuously updated view of system activity and running processes. :contentReference[oaicite:2]{index=2}

---

## What is the `ps` Command?

`ps` displays information about running processes.

Example:

```bash
ps -eo pid,user,%cpu,comm --sort=-%cpu
```

This command lists all running processes and sorts them by CPU usage in descending order. :contentReference[oaicite:3]{index=3}

---

## Difference Between `top` and `ps`

| top | ps |
|------|----|
| Real-time monitoring | Snapshot of running processes |
| Continuously updates | Runs once and exits |
| Good for live troubleshooting | Good for scripting and reports |

---

# Project Files

```
Day-004-Linux-CPU-Monitoring-Script/

├── README.md
├── cpu-monitor.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Linux
- Bash
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move to the project folder

```bash
cd Day-004-Linux-CPU-Monitoring-Script
```

Make the script executable

```bash
chmod +x cpu-monitor.sh
```

Run the script

```bash
./cpu-monitor.sh
```

---

# Sample Output

```text
==================================
 Linux CPU Monitoring
==================================

Current CPU Usage: 24%

OK: CPU usage is under control.

Top 5 CPU Consuming Processes

PID   USER     %CPU   COMMAND
1250  ubuntu   18.2   chrome
1021  root      4.3   dockerd
2205  ubuntu    2.8   code
```

---

# Commands Used

| Command | Purpose |
|----------|---------|
| top | Displays real-time CPU usage |
| ps | Lists running processes |
| awk | Extracts CPU percentage |
| grep | Filters CPU information |
| head | Shows the top 5 processes |

---

# Real-World Use Case

CPU monitoring is part of every production environment.

When users report that an application is slow, one of the first checks is CPU utilization. If CPU usage remains high for a long time, engineers investigate which process is responsible and decide whether to optimize the application, restart a service, or scale the infrastructure.

Modern monitoring platforms like Prometheus, Grafana, Datadog, CloudWatch, and New Relic automate these checks and generate alerts when CPU usage crosses predefined thresholds. :contentReference[oaicite:4]{index=4}

---

# What I Learned

- How CPU utilization works
- Using the `top` command
- Using the `ps` command
- Finding high CPU-consuming processes
- Writing Bash scripts with conditional logic

---

# Interview Questions

1. What is CPU utilization?
2. What is the difference between `top` and `ps`?
3. How do you identify the highest CPU-consuming process?
4. What is load average in Linux?
5. Which tools do you use for CPU monitoring in production?
6. What would you do if CPU usage stays above 90%?

---

# Next Improvement

In the next version, I plan to:

- Log CPU usage to a file
- Add email alerts
- Schedule the script using cron
- Monitor CPU usage continuously every few seconds
- Display per-core CPU utilization using `mpstat`[cpu-monitor.sh](https://github.com/user-attachments/files/30637215/cpu-monitor.sh)
