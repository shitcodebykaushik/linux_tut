# /etc
- The etc is the central directory  on the linux system which is the central system wide  configuration  files . It contains the setting that control the behaviour of the entire system .
- Dll are used in the runtime ,lib and lib64 are the dll file .
- Bootloader in Linux is a programm that initiates the boot process and is responsible for loading the linux kernal intp computer memory ,it acts as the crucial link between the computer firmware(BIOS or UEFI) and the operatiing system .In multi-boot systems (where you have more than one operating system installed), the bootloader also acts as a boot manager, providing a menu that allows you to choose which operating system to start.
-  `/etc/fstab` `fstab`is a system configuration file in Linux that stands for "file systems table." It is located at /etc/fstab and contains information about all the disk partitions and file systems on the system. The kernel reads this file at boot time to determine which file systems to mount and where to mount them.

- `Virtual memory` Virtual memory operates by dividing the memory into blocks called pages. When the physical RAM is full, the operating system's kernel moves less frequently used pages from RAM to a designated space on the disk called swap space (or a swap file). This process is known as swapping or paging.Virtual memory is a memory management technique used in Linux (and other operating systems) that allows a system to compensate for a shortage of physical memory (RAM) by temporarily transferring data from RAM to disk storage. It tricks a program into believing it has a contiguous block of memory, even when the data is physically scattered across different locations in RAM and on the hard drive.


- `/boot` The mount point where the kernal and boot related files are located .
-  `ext4` The file system type 
- `vfat`  The filesystem type which is compatible with the firmware 
- what
- `cd tilda` will take you the home dir of the particular account

- `passwd and shadow`: These files store user account information. passwd holds basic user data, while shadow stores encrypted passwords for security.

-`hosts and hostname`: hese files manage network hostnames. hostname contains the system's own hostname, and hosts maps IP addresses to hostnames.

-`apt`: This is a directory that holds configuration files for the Advanced Package Tool (APT), which is used to manage software packages on your Ubuntu system.

- `cron.d, cron.daily, cron.hourly, etc`.: These are directories and files used to schedule commands to run automatically at specific times.

- `systemd and init.d`: These are directories related to the system's init system, which is responsible for initializing and managing services and processes after the bootloader has loaded the kernel. systemd is the modern standard, while init.d is part of the older SysVinit system.

- `default`: This directory holds default settings for various programs and services.
- The shortcut for the last sudo command automatically run is `sudo !!`
- There is log entry of the everything in the linux . 
- `sudo -i` This will open the root user terminal .
- `.bashrc` A configuration file for the bash shell that contains command to be executed when the new shell session start .
- `.ssh` directory in the roor user home folder it contains the configuration files and the key  for the ssh protocol . Under this we will have the authorized key which contain cryptohtsphic things .
- 
# Difference  between root user and the root dir 
- `Root user` is the user account . It is the sytem administratior account. It is the most powerful user on the system with the user ID of `0` This root user has the unrestricted access and full control over all files. This is user .
- `Root dir` is the  location fo the file system . IT is the top most dir of the linux file system heiracrcy . This is the folder .
- The root user home dir is loacated at the `/root` which is sub dir of the top-level  directory (/). Other regualar user account on the system have their home dir under the `/home` dir and the `/root` for the root user .
-  `cd /` This will take you to the root dir .
-  `sudo -i` This will start the interactive root for the root user .
