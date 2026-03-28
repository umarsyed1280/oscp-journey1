# Machine Name: Dancing Hack The Box

+ 1 . Recon

+ Ran nmap scan:
 + nmap -sC -sV <IP>
+ Found ports 139 and 445 open (SMB)

+ 2 . Enumeration

+ Used smbclient to list shares:
  smbclient -L //<IP> -N
+ Found share: WorkShares

+ 3 . Initial Access

+ Connected to share:
 + smbclient //<IP>/WorkShares -N

+ 4 . File Discovery

+ Navigated directories using ls and cd
+ Found flag file

 5 . Flag Access

+ Downloaded file using:
  get filename
+ Read it locally using:
  cat filename

6 . Lessons Learned

* SMB shares can allow anonymous access
* Misconfigured shares expose sensitive data
