# Day 08 - Linux Group Management Script

## About This Project

Today I created a Bash script to automate Linux group creation.

Groups are used to organize users and control access to files and directories. Instead of creating groups manually every time, this script checks whether the group already exists and creates it only if needed.

This is one of the common administrative tasks performed by Linux and DevOps engineers.

---

# What is Group Management?

A Linux group is a collection of users.

Instead of assigning permissions to each user individually, permissions can be assigned to a group. Every user added to that group automatically inherits those permissions.

Linux stores group information in the `/etc/group` file, and groups are managed using commands like `groupadd`, `groupmod`, and `groupdel`. :contentReference[oaicite:1]{index=1}

---

# Theory

## Why are Groups Important?

Groups make permission management easier.

For example, if five developers need access to the same project folder, instead of assigning permissions to each user individually, you create one group called **developers** and add all users to it.

---

## Primary Group vs Secondary Group

Every Linux user has:

### Primary Group

- Assigned when the user is created
- Used as the default group for newly created files

Example

```
ibrahim
```

Primary Group

```
ibrahim
```

---

### Secondary Group

Additional groups that provide extra permissions.

Example

```
developers
docker
sudo
```

A user can belong to multiple secondary groups. This is the standard Linux permission model for sharing access across teams. :contentReference[oaicite:2]{index=2}

---

## Important Commands

Create Group

```bash
sudo groupadd developers
```

View Group

```bash
getent group developers
```

Rename Group

```bash
sudo groupmod -n devops developers
```

Delete Group

```bash
sudo groupdel developers
```

Add User to Group

```bash
sudo usermod -aG developers ibrahim
```

Check User Groups

```bash
groups ibrahim
```

The `groupmod` command is used to rename groups or modify group attributes, while `usermod -aG` appends a user to one or more supplementary groups. :contentReference[oaicite:3]{index=3}

---

# Project Files

```
Day-008-Linux-Group-Management-Script/

├── README.md
├── group-management.sh
├── output-example.txt
├── group-management.log
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

Move into the project

```bash
cd Day-008-Linux-Group-Management-Script
```

Give execute permission

```bash
chmod +x group-management.sh
```

Run the script

```bash
./group-management.sh
```

---

# Sample Output

```text
=======================================
 Linux Group Management Script
=======================================

Enter Group Name: developers

Group 'developers' created successfully.

Group Details

developers:x:1002:
```

---

# Commands Used

| Command | Purpose |
|---------|---------|
| groupadd | Create a new group |
| groupmod | Modify an existing group |
| groupdel | Delete a group |
| getent group | Display group information |
| usermod -aG | Add user to a group |
| groups | Show user group membership |

---

# Real-World Use Case

In an organization, developers working on the same project are usually added to a common group such as **developers**. File permissions are then assigned to that group instead of individual users, making access management much simpler.

For example:

- DevOps Team → devops
- Developers → developers
- Database Team → dba
- QA Team → qa

This approach simplifies permission management and scales better as teams grow.

---

# What I Learned

- What Linux groups are
- Difference between primary and secondary groups
- Creating groups
- Viewing group information
- Adding users to groups
- Automating group creation with Bash

---

# Interview Questions

1. What is a Linux group?
2. What is the difference between a primary group and a secondary group?
3. What is the purpose of the `groupadd` command?
4. How do you add a user to an existing group?
5. Which file stores Linux group information?
6. What is the difference between `groups` and `getent group`?

---

# Next Improvement

In the next version, I plan to:

- Create multiple groups from a CSV file
- Add multiple users to a group
- Rename existing groups
- Delete unused groups
- Generate a group management report