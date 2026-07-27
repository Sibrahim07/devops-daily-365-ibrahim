# Day 02 - Linux Disk Monitoring Script

## About This Project

Today I created a simple Bash script to monitor disk usage on a Linux system.

Running out of disk space is one of the most common reasons for application failures. Log files, backups, Docker images, or databases can slowly consume storage over time. Instead of checking disk usage manually, this script scans all mounted file systems and displays a warning whenever disk usage reaches 80% or more.

---

# What is Disk Monitoring?

Disk monitoring is the process of checking how much storage is being used on a system.

If a server runs out of disk space, applications may stop working, logs cannot be written, databases may fail, and deployments can break. Regular monitoring helps identify storage issues before they become critical. Linux administrators commonly use commands like `df` and `du` to monitor filesystem and directory usage. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is `df`?

`df` stands for **Disk Filesystem**.

It shows:

- Total disk size
- Used space
- Available space
- Usage percentage
- Mount point

Example:

```bash
df -h
```

The `-h` option displays the output in a human-readable format (MB, GB, TB). :contentReference[oaicite:2]{index=2}

---

## What is `du`?

`du` stands for **Disk Usage**.

Unlike `df`, it shows how much space a file or directory is using.

Example:

```bash
du -sh /var/log
```

Use `du` when you need to identify which directories or files are consuming storage. :contentReference[oaicite:3]{index=3}

---

## Why Monitor Disk Usage?

Some common reasons include:

- Prevent application downtime
- Detect storage issues early
- Monitor log growth
- Prevent database failures
- Keep production servers healthy

---

# Project Files

```
Day-002-Linux-Disk-Monitoring/

├── README.md
├── disk-monitor.sh
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

Clone the repository:

```bash
git clone https://github.com/<your-username>/devops-daily-365.git
```

Move into the project:

```bash
cd Day-002-Linux-Disk-Monitoring
```

Give execute permission:

```bash
chmod +x disk-monitor.sh
```

Run the script:

```bash
./disk-monitor.sh
```

---

# Sample Output

```text
Disk Usage Report
-----------------
OK: /dev/sda1 mounted on / is 42% used.
OK: /dev/sda2 mounted on /boot is 35% used.
WARNING: /dev/sdb1 mounted on /data is 85% full.
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| df -h | Displays filesystem usage |
| awk | Extracts required columns |
| tr | Removes the % symbol |
| while | Processes each filesystem |
| if | Checks usage against the threshold |

---

# What I Learned

- How to monitor Linux disk usage
- Difference between `df` and `du`
- Using `awk` to parse command output
- Writing loops and conditions in Bash
- Creating a simple monitoring script

---

# Real-World Use Case

In production, DevOps engineers often schedule scripts like this with **cron** to run every few minutes or hours. If disk usage crosses a threshold, the script can send an email, Slack notification, or integrate with monitoring tools like Prometheus or Nagios for automated alerting. :contentReference[oaicite:4]{index=4}

---

# Next Improvement

In the next version, I plan to:

- Add email alerts
- Write logs to a file
- Monitor a specific filesystem
- Schedule the script using cron[disk-monitor.sh](https://github.com/user-attachments/files/30418895/disk-monitor.sh)
[disk-monitor.sh](https://github.com/user-attachments/files/30418880/disk-monitor.sh)
