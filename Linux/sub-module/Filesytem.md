# Partition 
- In the linux partition is the logical division of a physcial device,like hard drive or SSD. The main purpose of the partition is the disk management in the linux and its essential for few things which are :- 
   - Organisizing Data
   - Multi Booting
   - Different Filesystem
- The way partition are laid out on a disk is defiend by partition table . The two most common type are :-
  - MBR (Master Boot Record)
  - GPT (GUID Partition Record)
# Sector and block 
- These both are the unit of the data storage on a disk, but they exit at different layeres of the storage stack 
- The sector is physical or hardware-level concept.It is the smalled physical storage unit on a hard disk or ssd . It is the minium amount of data that a device can read from or write to in single operation . 512bytes .
- While the block is a logical filesystem-level concept . It is the abstraction built on the top of the sectors, Whenever we save a file the filesystem allocated space in blocks.
# Note 
- Once we are done with the partition on a storage device,the next step is to format it with a filesystem. A  partition is just a raw,unorganized chunk of a space on disk,the file system is that crucial layer which organizes that space so that the operating system can actually store and retirive files .
# File system Hierarchy 
- Linux has a single,unified directory tree , The entire tree starts at the root direcotry ,denoted by a single slash .
- The linux follow the Filesystem Hierarchy Standard (FHS) which ensure the consistent layout across most distribution .
- 
- `ls -l` This will list all the dir inside the root of your system .
- `/bin` Essetnial ready to run programm ,binaries .
- `/etc`  Core system configuration directory should hold only configuration files not any binaries .
- `/dev` Device file 
- `/lib` Hold library  file that binaries use .
- `/usr` It hold the info of the other user .
- `/var` Varaible dir,it is used for system logging and user tracking,anything that is subject to changle all the time .
- `/mnt` Temporarily mounted filesystem 
- `/root` The root users home directory .
- `/tmp` Storage for temporary files 
- `/run` Information about the running system since the last boot .
- `/sbin` Contains essential system since the last boot .
- `/srv` Site specific data which are server by the system .
- `/proc` Information about the current running prcess . It is the virtual file system 
## 2 Filesystem Types 
-  There are many types of the filesystem available some are faster than other,some support larger capacity storage. Different filesystem have different ways of organize .
-  So there is something called the virtual file system (VFS) abstraction layer . It is layer between  application and the different filesystem  types,No matter what your filesystem you have, your application will be able to work with it .
- `NTFS` IS the default system for the windows.
- `ext4` It is for the linux distro .
- `FAT32` An older and simpler .
# Hierarchy 
- The root dir(/) is the highest level and all dir and branch out from this single point .
## Journaling 
-  Let's say you're copying a large file and all of a sudden you lose power. Well if you are on a non-journaled filesystem, the file would end up corrupted and your filesystem would be inconsistent and then when you boot back up, your system would perform a filesystem check to make sure everything is ok. However, the repairs could take awhile depending on how large your filesystem was.
# Common Desktop Filesystem Types 
- `ext4` This is the most current version of the native linux filesystem .It is compatible with the older ext2 and the ext3 version . It supports disk upto 1 exabytes and file size up to 16 tb and much more .It is roboust,matrue and reliable jouranling filesystem that provide the good balance between performance and fetatures .
- `Btrfs`-  `Better or Butter FS` It is a new filesystem for linux that comes with the snapshots.incremental backup .
- `XFS` Higher performance journaling file system,greater for a system with large files such as a media server ,
- `NTFS and FAT` Windows filesystem 
- `HFS`  Macintosh filesystem 
- `df -t` It is the file sytem disk space usuage and other details about your disk .


# Inode 
- The full form is `index node` . It is fundamenetal data structure in a linux filesytem that contains all the metadata about file or directory . It store the core compenent that tells the operating system everything it need to know to find and interact  with a file,except for the file name and the its actual data .
- This inodes store the following critical information .
  - File Type 
  - Permision 
  - Owneship 
  - Pointer to data block 
  - Hard Link

- When you create a file, a new inode is allocated for it.
When you move or rename a file within the same filesystem, only the directory entry changes; the inode remains the same. This is why renaming a large file is instantaneous—the system is only updating a pointer, not moving the data .



# Used commands 
- `df` THis report the amount of disk space used and available on all mounted device .
- `du` Shows the disk usuage of files and directories .
- `lsblk` List the information available block device .
- `blkid` Identifies and displays the attributes of block devices,such as their uuid .

- Mounting is the process of making a filesystem accessible to the operating system. When you mount a filesystem, you are attaching it to a specific, pre-existing directory in the Linux directory tree, which is known as a mount point .

-