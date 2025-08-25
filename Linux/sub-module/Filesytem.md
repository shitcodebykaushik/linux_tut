# File system Hierarchy 
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
- `ext4` This is the most current version of the native linux filesystem .It is compatible with the older ext2 and the ext3 version . It supports disk upto 1 exabytes and file size up to 16 tb and much more .
- `Btrfs`-  `Better or Butter FS` It is a new filesystem for linux that comes with the snapshots.incremental backup .
- `XFS` Higher performance journaling file system,greater for a system with large files such as a media server ,
- `NTFS and FAT` Windows filesystem 
- `HFS`  Macintosh filesystem 
- `df -t` It is the file sytem disk space usuage and other details about your disk .