# Day 09 - Linux File Permissions and Ownership Script

## About This Project

Today I learned one of the most important Linux concepts—file permissions and ownership.

Whenever a new application is deployed, incorrect file permissions can prevent services from reading configuration files, writing logs, or executing scripts. Understanding permissions is essential for every Linux Administrator and DevOps Engineer.

This project demonstrates how to create a file, change its permissions, and update its ownership using a simple Bash script.

---

# What are File Permissions?

Linux uses a permission system to control who can access files and directories.

Every file has:

- Owner
- Group
- Others

Each of them can have different permissions.

Linux uses three basic permissions:

- Read (r)
- Write (w)
- Execute (x)

These permissions help secure the operating system by restricting unauthorized access. :contentReference[oaicite:1]{index=1}

---

# Theory

## Read (r)

Allows a user to view the contents of a file.

Example

```bash
cat file.txt
```

---

## Write (w)

Allows a user to modify a file.

Example

```bash
echo "Hello" >> file.txt
```

---

## Execute (x)

Allows a file to run as a program or script.

Example

```bash
./script.sh
```

---

## Understanding Permission Output

Run:

```bash
ls -l
```

Example

```text
-rwxr-xr-- 1 ibrahim developers 120 Jul 28 10:00 script.sh
```

Explanation

```
-rwxr-xr--

Owner  -> rwx
Group  -> r-x
Others -> r--
```

---

## Numeric Permissions

| Number | Permission |
|---------|------------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 0 | --- |

Common examples

| Permission | Meaning |
|------------|---------|
| 777 | Full access to everyone |
| 755 | Owner has full access, others can read and execute |
| 700 | Only owner has access |
| 644 | Owner can read/write, others can only read |

The numeric (octal) permission model is widely used because it provides a compact way to assign permissions. :contentReference[oaicite:2]{index=2}

---

## chmod Command

Change permissions

```bash
chmod 755 script.sh
```

Give execute permission

```bash
chmod +x script.sh
```

Remove write permission

```bash
chmod -w file.txt
```

---

## chown Command

Change owner

```bash
sudo chown ibrahim file.txt
```

Change owner and group

```bash
sudo chown ibrahim:developers file.txt
```

---

## chgrp Command

Change only the group

```bash
sudo chgrp developers file.txt
```

---

# Project Files

```
Day-009-Linux-File-Permissions-and-Ownership-Script/

├── README.md
├── permissions.sh
├── output-example.txt
└── screenshots/
```

---

# Prerequisites

- Ubuntu / Debian / Rocky Linux / CentOS
- Bash
- sudo privileges
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Move into the project

```bash
cd Day-009-Linux-File-Permissions-and-Ownership-Script
```

Give execute permission

```bash
chmod +x permissions.sh
```

Run the script

```bash
./permissions.sh
```

---

# Sample Output

```text
========================================
 Linux File Permissions Demo
========================================

Default Permissions

-rw-r--r-- devops.txt

Changing permissions to 755...

-rwxr-xr-x devops.txt

Changing owner to current user...

-rwxr-xr-x ibrahim ibrahim devops.txt

Script completed successfully.
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| chmod | Change file permissions |
| chown | Change file owner |
| chgrp | Change group ownership |
| ls -l | View permissions and ownership |
| touch | Create a file |

---

# Real-World Use Case

Incorrect file permissions are one of the most common reasons applications fail after deployment.

For example:

- Nginx cannot read website files.
- Jenkins cannot execute deployment scripts.
- Docker containers cannot access mounted volumes.
- SSH rejects private keys if permissions are too open.

Understanding `chmod`, `chown`, and `chgrp` helps prevent these issues and improves system security. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- Linux permission model
- Owner, Group, and Others
- Read, Write, and Execute permissions
- Numeric permissions (755, 644, 700)
- Using `chmod`
- Using `chown`
- Using `chgrp`

---

# Interview Questions

1. What are Linux file permissions?
2. What is the difference between `chmod` and `chown`?
3. What does permission `755` mean?
4. What is the difference between `644` and `755`?
5. How do you change only the group ownership of a file?
6. Why should SSH private keys have restrictive permissions?

---

# Next Improvement

In the next version, I plan to:

- Demonstrate recursive permission changes (`chmod -R`)
- Explain special permissions (SUID, SGID, Sticky Bit)
- Add practical examples for directories
- Include common permission-related troubleshooting scenarios