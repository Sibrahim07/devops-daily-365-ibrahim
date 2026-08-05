# Day 06 - Linux Service Monitoring Script

## About This Project

Today I built a simple Bash script to monitor the status of Linux services.

Almost every application running on a Linux server depends on one or more services. For example, Nginx serves web traffic, Docker runs containers, and SSH allows remote access. If any of these services stop unexpectedly, users may not be able to access the application.

This script checks whether selected services are running and saves the results to a log file.

---

# What is Service Monitoring?

A service is a background program that starts automatically or manually and performs a specific task.

Examples include:

- SSH
- Docker
- Nginx
- Apache
- MySQL
- Jenkins

Service monitoring means checking whether these services are running correctly and responding as expected.

Keeping critical services available is one of the basic responsibilities of a Linux administrator or DevOps engineer. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is systemd?

systemd is the default service manager used by most modern Linux distributions such as Ubuntu, Debian, CentOS, Rocky Linux, and RHEL.

It is responsible for:

- Starting services
- Stopping services
- Restarting services
- Managing system boot
- Tracking service status

---

## What is systemctl?

`systemctl` is the command-line tool used to interact with systemd.

Common commands:

Start a service

```bash
sudo systemctl start nginx
```

Stop a service

```bash
sudo systemctl stop nginx
```

Restart a service

```bash
sudo systemctl restart nginx
```

Check service status

```bash
systemctl status nginx
```

Check if a service is running

```bash
systemctl is-active nginx
```

The `is-active` command is particularly useful in shell scripts because it returns an exit code that can be used in conditional statements. :contentReference[oaicite:2]{index=2}

---

## Why Monitor Services?

Service monitoring helps to:

- Detect service failures
- Reduce application downtime
- Improve system reliability
- Support troubleshooting
- Maintain production availability

---

# Project Files

```
Day-006-Linux-Service-Monitoring-Script/

├── README.md
├── service-monitor.sh
├── output-example.txt
├── service-status.log
└── screenshots/
```

---

# Prerequisites

- Ubuntu / Debian / CentOS / RHEL
- Bash
- systemd
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into the project

```bash
cd Day-006-Linux-Service-Monitoring-Script
```

Make the script executable

```bash
chmod +x service-monitor.sh
```

Run the script

```bash
./service-monitor.sh
```

---

# Sample Output

```text
=======================================
 Linux Service Monitoring Script
=======================================

✅ ssh is running.
✅ docker is running.
❌ nginx is NOT running.

Service status has been saved to service-status.log
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| systemctl status | Display detailed service information |
| systemctl is-active | Check if a service is running |
| systemctl start | Start a service |
| systemctl stop | Stop a service |
| systemctl restart | Restart a service |
| echo | Print messages |
| for | Loop through multiple services |

---

# Real-World Use Case

Imagine an e-commerce application where Nginx, Docker, and MySQL are running on the same server.

If Docker stops unexpectedly, the application containers become unavailable.

A monitoring script like this can be scheduled using cron or integrated with monitoring platforms to quickly detect the issue. In production, monitoring systems such as Prometheus, Grafana, Zabbix, Nagios, or CloudWatch provide automated alerts, but understanding how to check service health with Bash is an important foundational skill. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- What Linux services are
- What systemd does
- How to use systemctl
- How to check service status
- Logging service status to a file
- Using loops and conditions in Bash

---

# Interview Questions

1. What is a Linux service?
2. What is the difference between a process and a service?
3. What is systemd?
4. What is the purpose of the `systemctl` command?
5. What is the difference between `systemctl status` and `systemctl is-active`?
6. How would you monitor multiple services using a Bash script?

---

# Next Improvement

In the next version, I plan to:

- Restart a stopped service automatically
- Send an email when a service is down
- Send Slack notifications
- Monitor services every 5 minutes using cron
- Export logs with timestamps for auditing
