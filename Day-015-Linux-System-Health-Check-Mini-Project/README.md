# Day 15 - Linux System Health Check Mini Project

## About This Project

Today I built my first Linux mini project by combining everything I learned in the previous 14 days.

Instead of checking CPU, memory, disk usage, processes, and services separately, this script generates a single health report.

This type of script can be useful for basic server health checks, troubleshooting, or collecting system information before investigating an issue.

---

# Project Objective

Generate a simple Linux system health report containing:

- System Information
- CPU Usage
- Memory Usage
- Disk Usage
- System Uptime
- Running Services
- Top CPU Processes
- Recent System Logs

---

# Topics Covered

This project combines concepts from:

- Linux Commands
- Bash Scripting
- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Process Monitoring
- Service Monitoring
- Log Analysis

---

# Project Workflow

```

Run Script

↓

Collect System Information

↓

Check CPU

↓

Check Memory

↓

Check Disk

↓

Check Running Services

↓

Collect Top Processes

↓

Read Recent Logs

↓

Generate Health Report

```

---

# Project Files

```

Day-015-Linux-System-Health-Check-Mini-Project/

├── README.md
├── system-health-check.sh
├── reports/
│ └── health-report.txt
└── screenshots/

```

---

# Prerequisites

- Ubuntu / Debian / Rocky Linux
- Bash
- systemd
- Git

---

# How to Run

Clone repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move to project

```bash
cd Day-015-Linux-System-Health-Check-Mini-Project
```

Give permission

```bash
chmod +x system-health-check.sh
```

Run

```bash
./system-health-check.sh
```

View generated report

```bash
cat reports/health-report.txt
```

---

# Sample Report

```text
=========================================
 Linux System Health Report
=========================================

Hostname : ubuntu-server

Current User : ubuntu

Kernel : 6.8

CPU Usage

Memory Usage

Disk Usage

Running Services

Top Processes

Recent Logs
```

---

# Commands Used

| Command | Purpose |
|----------|----------|
| hostname | Display server name |
| uname | Show kernel version |
| top | CPU usage |
| free | Memory information |
| df | Disk usage |
| ps | Running processes |
| uptime | System uptime |
| systemctl | Check service status |
| tail | Display recent log entries |

---

# Real-World Use Case

Many organizations run scheduled health-check scripts to collect important server metrics before business hours.

These reports can help administrators quickly identify:

- High CPU utilization
- Low disk space
- Memory pressure
- Stopped services
- Unusual process activity

In larger environments, dedicated monitoring platforms such as Prometheus, Grafana, Datadog, or CloudWatch automate these checks. However, understanding how to gather this information with native Linux commands is an important foundation for DevOps engineers. 

---

# What I Learned

- Bash scripting
- Linux monitoring commands
- Service monitoring
- Process monitoring
- Report generation
- File handling
- Basic Linux administration

---

# Interview Questions

1. Why do we perform system health checks?
2. Which Linux commands are commonly used to monitor system health?
3. How do you identify high CPU or memory usage?
4. How would you automate this script to run every day?
5. How would you email the generated report automatically?
6. How would you extend this script for production use?

---

# Future Improvements

- Email the health report automatically
- Schedule execution using cron
- Export the report as HTML or CSV
- Add network connectivity checks
- Add filesystem threshold alerts
- Monitor multiple remote Linux servers using SSH