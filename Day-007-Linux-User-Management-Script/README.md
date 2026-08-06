# Day 07 - Linux User Management Script

## About This Project

Today I created a Bash script to automate basic Linux user management.

Instead of running multiple commands manually, this script creates a new user, assigns a home directory, sets the default shell, prompts for a password, and displays user information after creation.

User management is one of the basic responsibilities of a Linux Administrator or DevOps Engineer, especially while provisioning new servers or onboarding team members.

---

# What is User Management?

User management is the process of creating, modifying, deleting, and maintaining user accounts on a Linux system.

Every person or application accessing a Linux server needs a user account with appropriate permissions.

Linux administrators commonly use commands such as:

- useradd
- usermod
- userdel
- passwd
- id
- groups

These commands help manage users securely and efficiently. Ubuntu also recommends using account management tools to administer local users and groups. :contentReference[oaicite:1]{index=1}

---

# Theory

## What is a User?

A user is an account that allows someone or something to log in and use a Linux system.

There are two common types of users:

- Regular User
- System User

Example:

```
ibrahim
ubuntu
jenkins
mysql
nginx
```

---

## What is Root User?

The **root** user is the administrator of Linux.

The root account has permission to:

- Install software
- Create users
- Delete users
- Change passwords
- Modify system files
- Manage services

---

## What is Home Directory?

Each user has a personal directory.

Example

```
/home/ibrahim
```

This directory stores:

- Documents
- Scripts
- Configuration files
- Downloads

---

## What is Shell?

A shell allows users to interact with the operating system.

Common shells include:

- bash
- sh
- zsh
- fish

The script creates users with the Bash shell.

---

## Important Commands

Create a user

```bash
sudo useradd -m username
```

Create a user with Bash shell

```bash
sudo useradd -m -s /bin/bash username
```

Change password

```bash
sudo passwd username
```

Show user information

```bash
id username
```

Delete user

```bash
sudo userdel username
```

Delete user with home directory

```bash
sudo userdel -r username
```

The `useradd` command can create a home directory (`-m`) and assign a login shell (`-s`). The `userdel -r` option removes both the user account and its home directory. :contentReference[oaicite:2]{index=2}

---

# Project Files

```
Day-007-Linux-User-Management-Script/

├── README.md
├── user-management.sh
├── output-example.txt
├── user-management.log
└── screenshots/
```

---

# Prerequisites

- Ubuntu / Debian / CentOS / Rocky Linux
- Bash
- sudo privileges
- Git

---

# How to Run

Clone the repository

```bash
git clone https://github.com/your-username/devops-daily-365.git
```

Go to the project

```bash
cd Day-007-Linux-User-Management-Script
```

Give execute permission

```bash
chmod +x user-management.sh
```

Run the script

```bash
./user-management.sh
```

---

# Sample Output

```text
=======================================
 Linux User Management Script
=======================================

Enter username: devops

User 'devops' created successfully.

Set password for devops

User Information

uid=1002(devops) gid=1002(devops)

Home Directory

drwxr-xr-x devops devops /home/devops
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| useradd | Create a new user |
| passwd | Set or change password |
| id | Display user information |
| ls | Show home directory |
| echo | Print messages |
| if | Check conditions |

---

# Real-World Use Case

Whenever a new employee joins an organization, the system administrator creates a user account, assigns the correct shell, sets a password, and provides appropriate permissions.

In cloud environments, user creation is often automated using tools like Ansible, Terraform, or cloud-init. However, understanding how to create and manage users manually is an essential Linux administration skill. :contentReference[oaicite:3]{index=3}

---

# What I Learned

- What Linux users are
- Difference between regular and root users
- Creating users with `useradd`
- Setting passwords using `passwd`
- Viewing user information using `id`
- Writing a Bash script for user creation

---

# Interview Questions

1. What is the difference between `useradd` and `adduser`?
2. What is the purpose of the `-m` option in `useradd`?
3. What is the root user?
4. Where are Linux user accounts stored?
5. How do you delete a user and their home directory?
6. How do you check whether a user exists?

---

# Next Improvement

In the next version, I plan to:

- Add user deletion functionality
- Add group management
- Create multiple users from a CSV file
- Generate user creation reports
- Add better error handling and input validation