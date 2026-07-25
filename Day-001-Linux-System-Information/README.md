# Day 001 – Linux System Information
[system-info.sh](https://github.com/user-attachments/files/30377279/system-info.sh)
[output-example.txt](https://github.com/user-attachments/files/30377277/output-example.txt)
[system-info.sh](https://github.com/user-attachments/files/30377272/system-info.sh)
[output-example.txt](https://github.com/user-attachments/files/30377271/output-example.txt)

## Project Overview

This project demonstrates how to collect important Linux system information using a Bash script.

## Features

- Displays hostname
- Shows current user
- Prints Linux OS details
- Displays kernel version
- Shows CPU information
- Displays memory usage
- Shows disk usage
- Displays IP address
- Prints system uptime
- Shows current date and time



## Folder Structure

```
Day-001-Linux-System-Information/
│
├── README.md
├── system-info.sh
├── output-example.txt
├── screenshots/
└── LICENSE
```



## Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/devops-daily-365.git
```

Go to the project:

```bash
cd devops-daily-365/Day-001-Linux-System-Information
```

Give execute permission:

```bash
chmod +x system-info.sh
```

Run the script:

```bash
./system-info.sh
```



## Expected Output

```text
Hostname      : ubuntu-server
Current User  : ubuntu
Operating Sys : GNU/Linux
Kernel        : 6.8.0

CPU Information
Intel(R) Xeon(R)...

Memory Usage
...

Disk Usage
...

IP Address
192.168.1.100

System Uptime
up 3 hours

Current Date
Sat Jul 25 2026
```



## Commands Used

- hostname
- whoami
- uname
- lscpu
- free
- df
- hostname -I
- uptime
- date



## Real-World Use Case

DevOps engineers and system administrators use these commands to verify the health and configuration of Linux servers after provisioning, troubleshooting, or deployment.



## Skills Learned

- Linux Administration
- Bash Scripting
- System Monitoring
- Git & GitHub
