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
- With the byte manipulation happens in the ram .

# Partitation 
-  A partition is a logical division of a physical storage device, like a hard drive or SSD. Here each part is independent .
- Different partitions can be formatted with different file systems, such as ext4 for your main Linux system and NTFS for a partition you want to share with Windows.
- There are differernt types of partition table avaibale .
  - A partition table is a data structure on a storage device (like a hard drive or SSD) that acts as a map, defining how the disk is divided into different partitions. It stores crucial information, such as the start and end of each partition, its size, and its type. The operating system reads this table to understand the disk's layout and access the data on each partition.
  - `Master Boot Record (MBR)`: This is the older, traditional partitioning scheme. It has a limit of four primary partitions. To get more than four partitions, one of the primary partitions can be designated as an extended partition, which acts as a container for an unlimited number of logical partitions. MBR also has a size limitation of 2 terabytes.
  - `GUID Partition Table (GPT)`: This is the modern standard that has largely replaced MBR. GPT supports up to 128 partitions by default and can handle disk sizes much larger than 2 terabytes. In the GPT scheme, there's no distinction between primary, extended, and logical partitions; all are simply considered "partitions .
 - `Logical Division (Partition)`: This is a virtual or software-based separation of the physical device's storage space. The operating system treats each partition as a separate disk, even though they're all on the same physical device.
 - sector is equivalent to the byte,512 byte is equal to one sector .
 # ext4 system 
 - This is the extension of the ext3 .
 - It follows the jounralising for maintaing the log file .
 - 
 `lsblk -f`: This command is the most straightforward. It lists all block devices and includes the FSTYPE column, which shows the file system type .
 `df -T`: This command shows the file system type for all currently mounted file systems.
 `sudo blkid`: This command reads the metadata from a device to determine its file system type, UUID, and other information. 
 # Block and inodes 
 - In a Linux file system, blocks and inodes are fundamental concepts for storing and managing data. They work together to ensure files are organized and accessible.
 - Block is bigger than a sector . one sector was indeed 512 bytes. This was the industry standard for hard disk drives (HDDs) for decades. However, the move to higher data density led to a new standard.
   Today, most new hard drives and solid-state drives (SSDs) use 4096 bytes (4 KB) per sector, a standard known as Advanced Format (AF).
 - The operating system and the hard drive controller can't read or write data smaller than a sector .
# Building the filesystem 
- In Ubuntu, file systems are built in a hierarchical, tree-like structure starting from a single root directory (/). Unlike Windows, which uses separate drives (like C:, D:, etc.), all storage devices and partitions in Linux are mounted as part of this single directory tree. This gives Linux a unified file system.
- Think of the Linux file system as a single, large tree with the root directory (/) at its base. When you connect a device, like a USB drive or a hard disk partition, its files aren't automatically part of this tree. The mount command acts like a bridge, connecting the device's file system to a specific, empty directory on the main file system tree. This directory is called a mount point
-The opposite process is unmounting, which disconnects the file system from its mount point using the umount command. It is important to unmount a device before physically removing it to prevent data corruption .
- `umount` This is used to unmount the device . And you have to out of the dir to make the current device unmount .
- The very first thing when we do partition is choose the format of the file sytem .












