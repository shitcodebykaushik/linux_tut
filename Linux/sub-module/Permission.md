# Permission 
- `ls -l` This will list the permission associated with the directory .
- Changing the file permission can be done using the `chmod` command .
- In addition to modifying permission on files you can modify the group and user ownership of the file .
- `chown` is used to modify the ownership of the file .
- Every files come with the default set permission . Use `umask` to change the permission .
- 


# Cron job 
- It is the standard time-based job scheduler on UNIX/Linux. A cron job is a scheduled task that cron daemon (crond) runs automaticallt at specified time or interval .
- crond is the background service that reads crontab files and run jobs .
- Each user can have crontab;there are also system crontab `(/etc/crontab)` and drop-ins .
- A cron job is mechanism for automating repetitive task in Linux. Instead of running command mannualy cron allow us to schedule them to run automattically at specific time or interval .
- Cron itslef is a daemon (a background process) that run cron jobs as specified in the crontab .
- 

# ACL permission 
- There is ACL entry . 
- GetFACL
- SetFACL 


# Journalctl 
- This is use to watch the log file of the system .
- The centralized log store for system,kernal and service message on systemd based linux .
- Reads logs produced by systemd,services kernal and many system .
- Required root or membershio in the systemd-journal group for full access .
