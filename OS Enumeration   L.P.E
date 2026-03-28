# Linux Privilege Escalation - OS Enumeration

## Objective

The goal of this task was to identify the Linux distribution details and codename of the target system.

This information is useful for:

* Identifying kernel vulnerabilities
* Searching for privilege escalation exploits
* Matching the system against known exploit databases

---

## Target Information

* Target IP: 192.168.128.214
* Username: joe
* Password: offsec

---

## Initial Access

Connected to the target via SSH:

ssh joe@192.168.128.214

After entering the password, access to the system was obtained.

---

## Checking OS Information

To identify the operating system, the following command was used:

cat /etc/os-release

### Example Output:

NAME="Debian GNU/Linux"
VERSION="10 (buster)"
ID=debian
VERSION_ID="10"
VERSION_CODENAME=buster

---

## Identifying the Codename

The important line in the output is:

VERSION_CODENAME=buster

This reveals the distribution codename.

### Result:

The system is running Debian 10 with codename "buster".

---

## Faster Enumeration Method

Instead of reading the full file, a more focused command can be used:

grep VERSION_CODENAME /etc/os-release

This directly returns the codename.

---

## Why This Matters

Knowing the OS version and codename helps in identifying known vulnerabilities.

For example:

uname -a

This provides kernel information, which can be used to search for exploits:

searchsploit debian 10

---

## Basic Enumeration Commands

After gaining access to a system, the following commands are useful:

* id → shows current user and privileges
* uname -a → displays kernel version
* cat /etc/os-release → shows OS details
* sudo -l → lists sudo permissions

These commands provide essential information for privilege escalation.

---

## Key Result

Linux Distribution Codename:
buster
