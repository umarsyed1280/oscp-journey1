Machine Name: Meow Hack The Box

 1. Recon
- Ran nmap scan:
  nmap -sC -sV <IP>
- Found port 23 open (Telnet)

 2. Enumeration
- Identified Telnet service

 3. Initial Access
 Connected using:
  telnet <IP>
 .Logged in as root (no password)

 4 .Privilege Escalation
 Already root

5 .Lessons Learned
 .Telnet is insecure
 .Weak authentication leads to compromise
