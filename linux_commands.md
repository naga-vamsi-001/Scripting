# 📘 Linux Commands and Administration - GitHub Documentation

This document provides a structured and clear explanation of essential Linux commands and administrative tasks. It is organized for use as a reference, interview preparation, or project documentation.

## 📚 Table of Contents

1. [File and Directory Management](#file-and-directory-management)
2. [Text Editing](#text-editing)
3. [User and Group Management](#user-and-group-management)
4. [Permissions and Ownership](#permissions-and-ownership)
5. [Process Management](#process-management)
6. [Disk and File System Management](#disk-and-file-system-management)
7. [Partitioning and LVM](#partitioning-and-lvm)
8. [Backup and Archiving](#backup-and-archiving)
9. [Special Permissions (SUID, SGID, Sticky Bit)](#special-permissions-suid-sgid-sticky-bit)
10. [Package Management (RPM & YUM)](#package-management-rpm-yum)
11. [Job Scheduling (cron, at)](#job-scheduling-cron-at)
12. [Boot Process & Troubleshooting](#boot-process-troubleshooting)
13. [System Initialization - systemd](#system-initialization--systemd)


1. Command to create a file
```bash
#touch <filename>
#touch   f1
2.Command to create multiple files
#touch <file1>  <filename2> <filename3>
#touch   dog apple cat
```

3.Command to create sequence of files
```bash
#touch  a{1..10}
#touch  {1..15}
#touch   {a..z}
```

4.Command to create hidden files
```bash
#touch   .alpha
```

5.Command to display the data in the file
```bash
#cat <filename>
```

6.Command to edit the data of the file
```bash
#cat >  a1
```

7.Command to append the data to the existing file
```bash
#cat  >>  a1
```

8.Command to edit the same data to all files
```bash
#tee f{1..10}
dog
apple
cat
parrot
ctrl+d --> to save
```

9.Copy the data from one file to another file( copy and paste )
```bash
#cp   <file1>  <file2>
#cp  f1   ball
#cp   /root/Desktop/ball     /tmp/dog
#cp    f1    /run/
```


10.Command to change directory from one location to another location
```bash
#cd   <location path>
#cd    /root
cd   /run
cd    /etc
```

11. Command to change to the previous directory
```bash
#cd  ..
```

12.Command to change the previous working directory
```bash
#cd  -
```

13. Command to change to the user's home directory
```bash
#cd
```

14. Command to move the data from one file to amother file  (cut and paste)
Command to rename the file name
```bash
#mv  <file1>   <file2>
#mv ball    orange
#mv   orange    /root/dog
#mv    ball  /root/  (change the file with same name)
```

15. Command to delete the files
```bash
#rm   <filename>
#rm  -f   <filename>
#rm -f   <file1> < file2>  <file3>
-f  --->  forecefully
```

16.Command to remove the files starting  with  'a'  letter
```bash
#rm  -f   a*
```

17.Command to remove the files ending with  'a' letter
```bash
#rm   -f  *a
```


## Directories


1. Command to create directory
```bash
#mkdir   <dir name>
#mkdir   d1 d2 d3 d4
#mkdir  ball dog orange dinesh
```

2. Command to create the multipe directories one inside the other
```bash
#mkdir   -p   ball/{1..10}
#mkdir  -p  dog/{a,b,c}
#mkdir  -p   redhat/{linux/{a,b,c},linux1/{1,2,3,4,5}}
-p   ---->   represents parent directory
```

3. Command to copy the content from one directory to another directory
```bash
#cp    -r  <dir1>   <dir2>
-r represents   'recursive' (inside the data)
#cp  -r   ball   /root/redhat
#cp  -vr   redhat  d1
-v --->   verbosity  (whatever output we can see visually)
```

4.Command to move the content from one dir to another directory
command to rename the directory
```bash
#mv  <dir1>   <dir2>
#mv   redhat   linux
#mv  linux   /
#mv linux    /root
```

5.Command to remove the directory
```bash
#rm   -r  <dir1>
#rm  -rf   <dir1>   <dir2>
-r --> recursive
-f --> forecully
```


## Filter Commands

1. LS
2. FIND
3. GREP
4. WC
5. HEAD
6. TAIL
7. SORT
8. CUT
9. SED
10. AWK
11.MORE
12.LESS


## Ls:

It is used to list the files and directoriess in the present location and other locations


1. Command to list the files and directories in the working directory
```bash
#ls
```

2. Command to list the total file and directories (hidden files also)
```bash
#ls -a  (a indicates all files )
```

3. Command to display files and dir in diff directory
```bash
#ls  /etc
#ls /boot
```

4. Command to list the files with long list format
```bash
#ls -l  or #ll
```

5. Command to list files newest first
```bash
#ls -t
```

6. Command to list the files in reverse order
```bash
#ls -r
```

Kernel provide unique ID to the files and direcories in the system, we are calling that ID's known as INODE Number

7. Command to display inode numbers
```bash
#ls -i
```

8. Command to display the SELINUX context of the files
```bash
#ls -Z
```

9. Command to display the recursive files inside the directories
```bash
#ls -R
```

If you want study more about 'ls' command go and check in the manual page
```bash
#man ls
```


## Grep

It is used to search the word in the file. It is also used to search multiple words in the file

1. Command to search word in the file
```bash
#grep  <word>  < filename >
#grep ball   family
```

2. Command to search the words along with number lines
```bash
#grep  -n  < word >  < filename>
#grep -n ball family
```

3. Command to search the words invert match
```bash
#grep -v  <word>   < family>
#grep   -v   ball   family
```

4. Command to count the search words
```bash
#grep  -c  <word>  < filename>
#grep  -c  ball  family
```

5. Command to search words only string has to come in last
```bash
#grep  <word>$   <filename>
#grep  ns$  /usr/share/dict/words
```

6. Command to search words  only string has to come in first
```bash
#grep   ^< word >   < filename>
#grep  ^ns  /usr/share/dict/words
^ represents "cariot key"
```

7. Command to search only words
```bash
#grep   -w   < word>  <filename>
#grep  -w  es  /usr/share/dict/words
```

8.Command to  search multiple words
```bash
#grep  -E   'ball|dog|orange'  family
#egrep   'ball|dog' family
egrep means  ' extended grep'
```

if you want to study more about grep go to manual page
```bash
#man grep
```

WC (word count)
It is used to display the count of the words in the file
1. Commad to display the count the lines,words and characters in the file
```bash
#wc   < file name >
#wc  family
#wc   /etc/passwd
```

2. Command to display only lines
```bash
#wc  -l  < filename>
#wc -l   family
```

3. Command to display only words
```bash
#wc  -w   < filename>
#wc -w  family
```

4. Command  to display only characters
```bash
#wc  -m(or) c    < filename>
#wc   -m (or)  c    family
```



## Head

It will display the lines in the file
1. Command to display the starting lines
```bash
#head   < filename>
#head   /etc/passwd
It will display only starting 10 lines
```

```bash
#head -n 5 /etc/passwd ( display only five lines)
#head -5  /etc/passwd
```



## Tail

It will display the ending lines of the file
1. Comamnd to display  the ending lines
```bash
#tail  < filename>
#tail /etc/passwd
It will display the last 10 lines in the file
```

```bash
#tail -n 5  /etc/passwd (display only last 5 lines)
#tail -5 /etc/passwd
```


## Sort

It is used to sort the data in the file dictionary order
```bash
#sort  < filenaname>
#sort   family
```

SED (stream editor)
It is used to change the data with different word in the output

1. Coammd to changethe word 'ball' to 'linux' in the output globally
```bash
#sed  's/ball/linux/g'  family
s -->  search
g --> globally
```

UMASK: It is used to restrict the permissions for files and directories
By default, files and directories have read, write and execute permissions
In Linux OS, we have read write execute permissons for user group and othe users
The default permissions for file in linux OS  is   rw-r--r--(root user) rw-rw-r--(remaining users)
The default permission for directory in linux OS is rwxr-xr-x(root user) rwxrwxr-x(remaining users)
In linux OS read(r) value is 4
wrirte(w) value is 2
execute(x) value is 1
the deafult value of permission for file is 644(root user)  664(other users)
The default value  of  permission for directory is 755  775(other users)

By default, permissoins doesn't have write access to both group and others, that value we are calling as UMASK
The default UMASK value for root user is 022
The default UMASK value for other users is 002

The default full permisson for file is 666
The default full permission for directory is 777


Commad to check the UMASK value
```bash
#umask
```

Command to change the UMASK value
```bash
#umask  <what value you want to change >
#umask 000
```

The above changes of UMASK value is temporary once reboot your machine it will back to original value
If you want make changes permanent, we have to change these permissions in the configuration file
The configuration file is /etc/bashrc

CHMOD (change mode)
It is used to change the permissions for files and directories individually
we can change permission by two methods
1. Numeric method
2. Symbolic method

NUMERIC Method:
```bash
#chmod  < numeric value of permissions >  < file or directory>
#chmod  644  a1 f1 a2
```

Command to change permissons for directory alongwith the inside files
```bash
#chmod -R  < permissions >   < directory name >
#chmod  -R  777  b1
```

SYMBOLIC Method:
We are using symbols to change the permissions
The symbols are +, - , =

By default user group and others have read write and execute permissions
u=rwx g=rwx o=rwx

Command to change the permissions using symbolic method
```bash
#chmod    u=rw,g=rw a1
#chmod   u+x,g+w,o+w b1
#chmod    u-x,g-w,o-x  c1
#chmod   u+xw,g-rx,o=r  d1
```


## Find :

1.Command to find all file in directory
```bash
#find  or #find .
2.Command to find files based on name
#find  . -name  <filename>
#find  /  -name   < filename>
#find  / -iname   < filename>
i represents ignoring case-sensitive
```

3.Command to find only files
```bash
#find / -type f  -name  < filename >
-iname
4.Command to find only directory
#find   /   -type  d   -iname   < directory name >
```

5.Command to find all  hidden files
```bash
#find  /  -name  ".*"
```

6. Command to find  all .doc  or .pdf files
```bash
#find  /  -type f  -iname  "*.doc"  or "*.pdf"
```

7.Command to find all empty files
```bash
#find   / -empty
```

8.Command to find all the files who has permision 777
```bash
#find  /  -perm  777
```

9.Command to find all files who doen't have permission 777
```bash
#find  /  -type f !  -perm   777
```

10. Find  all files who has permission 644 and change those files to 777
```bash
#find   /  -type f  -perm 644 -exec   chmod 777  {} \;
```

11.find all files who has permission 777 and copy into another directory
```bash
#find  .  -perm 777  -exec cp  {}  -ar  /ball  \;
```

12. Find all the files under user apple(username)
```bash
#find  /  -user apple
```

13.Command to find all the files size is having 5M
```bash
#find /  -size  5M
#find / -size  -5M(less than 5MB files)
#find  / -size +5M(greater than 5MB files)
#find  /  -size  +5M -size  -7M( range between 5 and 7 MB files)
```


## Locate:

It is used to locate the files in the locate database. Once the data is entered into the database you can locate files otherwise we cannot locate files.
By default, locate database will update automatically by running the system job.
If you want to update database we can update by manually

Command to update database manaually
```bash
#updatedb
```

Command to locate files
```bash
#locate   < filename >
#locate  ball
```

```bash
#locate  -c  ball
c  -->  count
```

Vi or VIM editor
It is used to edit the files
In this we have three modes
1. Insert mode (press 'i' button to enter into insert mode)
2. Command mode (press 'esc' button to enter into command mode)
3.Colon mode (press ' : ' to enter into colon mode )

1)  :w --> to save but not quit
2)  :q  --> to quit without save
3) :q!  -->  to quit forcefully
4) :wq  --> to save and quit
5) :wq!  --> save and quit forcefully

Shortcuts
1.  esc+:set nu -->  to set number lines to the file
2.  esc+:set nonu  -->  to set no number lines to the file
3.  esc+ G(shift g) --> command to move cursor to the last line
4.  esc+ H(shift h) --> command to move cursor to the first line
5.  esc+o  --> command to move cursor to next line and also enter to the insert mode
6.  esc+j   --> command to move cursor to next line
7.  esc +k  --> command to move cursor to previous line
8.  esc +yw  --> command to copy a single word
9.  esc +nym  --> command to copy 'n' number of words
10. esc+p  --> command to paste the words
11. esc +yy --> command to copy a single line
12. esc+nyy --> command to copy 'n' number of lines
13. esc+dw  --> delete a single word
14. esc+ndw --> delete 'n' number of words
15. esc+dd --> delete a single line
16. esc+ndd --> delete 'n' number of lines
17. esc+u --> undo the changes
18. esc+:number line(ex;10)  --> move the cursor to the exact number line
19. esc+:/word (ex: /ball) -->  move the cursor to the exact word

ARCHIVING and COMPRESSION
Compression is used to reduce the size of the file to rdeuce the space.
There are three compression methods are avaialable
1.gzip
2.bzip2
3.xz
command to compress the file using gzip compression
```bash
#gzip  < filename > a1
```

bzip2 compression
```bash
#bzip2 < filename> a2
```

xz compression
```bash
#xz  < filename> a3
```

UNCOMPRESS

```bash
#gunzip  < gzip file name>(a1.gz)
#bunzip2  <  bunzip file name >(a2.bz2)
#unxz  < xz filename >(a3.xz)
```

Archiving is used to creating backup and to transferring the data across the network easily
Here we are learning the  'tar'  archive
Archive can be compressed by using compression methods

The commonly used options in 'tar' archive
-c  --> to create a new archive
-f  --> to assign a file name to archive
-t  --> to display the content in the tar file
-x --> to  extract the archive file
-u --> to update the archive file
-r --> to append the archive file
-v--> verbose
-C  --> to specify directory
-z  --> gzip compression
-j --> bzip2 compression
-J  --> xz compression
--delete --> delete a file in archive file

1. Command to create an archive file
```bash
#tar  -cf  < tar file name >  < data to create tar >
#tar  -cf   ball.tar   etc  /boot
#tar  -cvf  ball1.tar   etc a1 a2
```

2. Command to display the content in the tar file
```bash
#tar  -tf   < tar file name >
#tar  -tf  ball.tar
```

3. Command to display the some files in the tar file
```bash
#tar  -tf  ball.tar  a1 a2 etc/passwd
```

4. Command to extract the tar file
```bash
#tar  -xf   <tar file name>
#tar  -xf ball.tar
#tar -xf  ball.tar  -C  /tmp  (extract tar file in diferrent directory)
```

5.Command to extract few files
```bash
#tar -xf  ball.tar a1 a2
```

6.Command to update the tar file
```bash
#tar -uvf  < tar file name >   < what files you want to update >
#tar  -uvf   ball.tar   dog  /sunny
#tar  -rvf   ball1.tar   dog  /sunny
```

7.Command to delete a file in tar file
```bash
#tar  --delete  -f  <  tar file name >  < which file you want to delete you can give here .
#tar  --delete  -f  ball.tar  dog  sunny
```

8. Command to create tar file along with compression methods
```bash
#tar  -cvzf , -cvjf, -cvJf   < tar along with compression filename>  < file you want to make tar >
#tar  -cvzf  etc.tar.gz   /etc
#tar  -cvjf  etc.tar.bz2  /etc
#tar  -cvJf  etc.tar.xz  /etc
```

```bash
#du -sh etc.tar.gz etc.tar.bz2  etc.tar.xz
```


## Links:

links are the connection between two files or directories
There are two types of links
1.Hard Link
2.Soft Link

Hard Link
It is used to link between only files
```bash
#touch ball
#ln  ball ball1
#ls
```

Linitations:
1. Hard Link cannot create between directories
2. Hard Link cannot create between different filesystems.
3. Hard Link cannot Identify easily between files
4. Hard Link can identify by the checking of INODE numbers because hard link has same inode number
5. If we delete the source file of the hard link, the destination file cannot be deleted.

Soft Link:
```bash
#touch  dog
#ln  -s  dog sunny
#ls -l
```

Limitations:
1.Soft link is easy to dentify
2.Soft link is created between the directories
3.Soft Link is created between different filesystems
4.Soft link can have different INODE numbers
5.If we delete the source file of the soft link, the content of the destination file will be deleted


## Partitions:

A hard disk is sub-divided inti multiple portions called partitions.
ex:
1. In windows we are dividing hard disk into partitions and named as Localdisk  C,D,E
2. The kernel will assign those names automatically

Linux:
1. In Linux OS, for every device linux kernel provides a logical name based on its class (hard disk class)
There are four types of Hard Drives are avaialable
1. Integrated Device Electronics(IDE) or Parallel Advanced Technology Attachment(PATA)
2. Serial Advanced Technology Attachment(SATA)
3. Small ComputerSystem Interface(SCSI)
4.Solid State Drive (SSD)

--If it is a SATA/SCSI drive, the liunux kernel will be named as  /dev/sda , /dev/sdb
--If it is a IDE/PATA hard drive, the linux kernel will assign as  /dev/hda, /dev/hdb
--If it is a virtual hard disk, the linux kernel will be named as  /dev/vda, /dev/vdb

How to create partitions?
We are creating partitions in RHEL-7 by using three utilities
.1.fdisk
2.parted
3.gdisk


## Fdisk:

1. USing Fdisk command, we can create maximum four primary partitions
2. In RHEL-7, using fdisk command we can create maximum of three primary partition and last one will take automatically to extended partition
3. In extended partition, We can sub divided into multiple partitions known as the logical partitions
4. Inside the extended partition, the maximum number of logical partitions we can create upto 11
5. Iclude primary partition,extended,logical partitions we can create totally 15 partitions.
6. The type of labelling in fdisk use is-- msdos (or) MBR labelling
7. The maximum disk size is supported by fdisk is 2TB

Command to list the disks and partitions
```bash
#fdisk   -l
l --> list
```

Creating partition using fdisk:
```bash
#fdisk  < disk name>
#fdisk  /dev/sdb
(   1 sector = 512 bytes
2 sectors = 1024 bytes
1024bytes = 1KB
1MB = 1024 KB )
command (m for help): m
Command (m for help): n --> add a new partition
Partition type
p  primary  (0 primary, 0 extended, 4 free)
e  extended
select (default p):
first sector (2048-234672, default 2048):  press enter
last sector , +sectors or +size {K,M,G}    :  +3G
partition 1 of type Linux 3GB is set
command (m for help) : p {print the partition table }
command (m for help): w {save & quit}
```

Command to inform the kernel about new partitions
```bash
#partprobe /dev/sdb
#partprobe
```

Delete a parttion:
```bash
#fdisk /dev/sdb
command (m for help); d {delete a partition}
partition 1 is deleted
command (m for help): w
```

```bash
#partprobe
```


## Parted:

1. It is a command used to create partition on the hard disk
2.Using parted, we can create upto maximum of 128 partitions on a single hard disk
3.The type of disk labelling used in the parted command is GPT ( Guided partition table)
4.GPT labelling allows disk size more than 2TB

Command to create partition using parted:
```bash
#parted  < disk name >
#parted  /dev/sdb
GNU parted
Using /dev/sdb
(parted) help { list all the commands used in parted prompt}
(parted) mklabel --> {to create a new label on the disk}
new disk label?gpt
(parted) mkpart
{creates a new partition }
partition name [ ] ? { any name }
filesystem type [ ext2]?
start? 0M
end? 1GB
```

(parted) print { print the partition table }
(parted) mkpart
partition name [ ] ? { any name }
filesystem type [ ext2]?
start? 1000M
end? 3000M
(parted) printt or p
(parted) quit

```bash
#partprobe --> to inform to the kernel about the partition
```


Delete a partition using parted :
```bash
#parted /dev/sdb
(parted) help
(parted)print
(parted) rm 2  { deletes the second partition}
(parted)rm  1 {deletes the first partition }
(parted)  quit
```

```bash
#partprobe
```

Raw Device:
The device which is not having a file system is called a Raw Device.

Block Device:
The device which is formatted with filesystem is called Block Device.

The filesystems are available in Linux
http://www.tldp.org/LDP/intro-linux/html/sect_03_01.html
1.ext
2.ext2
3.ext3
4.ext4
5.xfs
6.zfs
7.Btrfs
https://en.wikipedia.org/wiki/Btrfs
https://www.quora.com/What-is-the-difference-between-Linux-filesystems-ext2-ext3-ext4-and-ext5
http://www.electronicdesign.com/industrial/what-s-difference-between-linux-ext-xfs-and-btrfs-file-systems
https://en.wikipedia.org/wiki/XFS



## Mkfs:

It is a command  used to assign a file system either using extended (or) xfs format
It is also creates a directory called "lost+found" which is used for filesystem recovery in the event of filesystem corruption

Command to assgin filesystem to a partition:
```bash
#mkfs.ext4   /dev/sdb1
#mkfs  -t ext3   /dev/sdb1
```

Command to display the file system on partition
```bash
#blkid  /dev/sdb1 {it will show only that partition }
#blkid --> {it will show total partitions}
```

Commad to display the filesystem information only for extended
```bash
#dumpe2fs  /dev/sdb1
```

Command to display the superblock information
```bash
#dumpe2fs /dev/sdb1  |  grep superblock
```

Mounting:
It is a process of attaching the filesystem(partition) to any one of the direstory under root(/).
The main purpose of mounting a filesystem is to make the filesystem accessible to the users
There are two types of mounting
1.Temporary
2.Permanent

Temporary Mounting:
If you are going to any mounting, we need one directory to act as a mount point. So that we have to create directory manually
```bash
#mkdir   /redhat
#mount  /dev/sdb1  /redhat
```

Command to display the mount points
```bash
#df   -h
df --> disk free
-h -->  human readable
```

Once 'reboot' your system the mount will be removed automatically but the data will be available
The entire mount points is stored in /etc/mtab { mount table } file, once you display the mount points the kernel will read the entire file
and display the every mount point in that file.

Permanent Mounting:
If you want to do permanent mounting we need to give the mount point in configuration file
THe permanent mounting configuration file is   /etc/fstab{ filesystem table}

The syntax for  the fstab entry
Device to mount
(or) partition name	mount point	filesystemtype	mount	FSdump		FSCK
(or )UUID						options     (filesystem dump)       (filesystem check)
0 --> no dump	0 --> no check
1 --> dump	1 --> FSCK need to run serially
2 --> FSCK need to run parallely

ex:
```bash
#vim /etc/fstab
got to last to the file and then write entry
/dev/sdb1	/redhat	ext4	defaults	1	1
#mount  -a  { a--> all}
#df -h
```

UNMOUNTING:
It is a process of detaching the filesystem from the directory under root.
The main purpose of unmounting the filesystem is to either to delete a partition (or) to perform mainatainence operation

Command to unmount the filesystem
```bash
#umount   <  mount point >
#umount   /redhat
```

Unmount busy filesystem
first we need to check the what are all the users are in that directory
```bash
#fuser   -cu   /redhat
-c --> open process
-u  -->  user
```

If still they are in that directory we can kill those forcefully
```bash
#fuser   -ck   /redhat
-k  -->  kill the users
```

Once you kill the users, you can unmount the filesystem

```bash
#umount   /redhat
```

Partition creation:
```bash
#fdisk  /dev/sdb
Create partition of 4G
#partprobe
#mkfs.ext4  /dev/sdb1
#mkdir  /ball
#vim /etc/fstab
/dev/sdb1	/ball	ext4	defaults	1	2
```

:wq!
```bash
#mount -a
#df  -h
```

NOTE:
1. Without unmounting the filesystem, don't delete the partition
2. If you want to delete a partition
a) first unmount the filesystem
b) if it is permanent mounting remove the entry in fstab file
3. If you don't remove the fstab entry before rebooting, the system will not boot (it will stop in the middle and enter into maintainence mode)

e2fsck:
What are the common reasons that filesystem get corrupted?
1. The main reason of the filesystem get corrupted is abnormal shutdown
2.Next one is file system files are missing from the existing position
3.Any unauthenticate devices are connected to the machine

e2fsck is a tool used to recover the extended file systems(ext2,ext3,ext4).
There are two methods to recover the filesystem
1.Interactive method
2.Non-interactive method

Interactive method:
This method is used to recover the filesystem with the user interacation in the recovering time.

Commads:
1.  Command to check the filesystem
```bash
#e2fsck  -n   < partition name >
#e2fsck  -n  /dev/sdb1
```

2.Command to repair the filesystem
```bash
#e2fsck   <partition  name>
#e2fsck   /dev/sdb1
```


Non-ineractive method;
This method is usedto recover the filesystem without the user interaction

Command to recover the filesystem
```bash
#e2fsck -y  /dev/sdb1
```

Command to display  the filesyetm information
```bash
#dumpe2fs  < partition name >
#dumpe2fs   /dev/sdb1
```

Command to display the alternate superblock information
```bash
#dumpe2fs   /dev/sdb1  |  grep  superblock
```

Alternate superblock is commonly called as  Backup Superblock

Command to recover the filesystem  using the  block id number
```bash
#e2fsck -f   -b   < block id number>   < partition name >
#e2fsck   -f   -b  32768    /dev/sdb1
```

Command to recover the filesystem forcefully
```bash
#e2fsck  -f /dev/sdb1
```

XFS filesystem:
In XFS filesystem the tool we are using to repair is  xfs_repair

Command to check the filesytem
```bash
#xfs_repair   -n   /dev/sdb2
```

Command to repair the filesystem
```bash
#xfs_repair   -f   /dev/sdb2
```

LVM: (logical volume manager)
Volume manager is used to
i) increase the capacity of filesytem ONLINE
ii)It is used to increse the capability of filesystem ONLINE
iii) It is used to increse the performance of filesystem ONLINE

Volume are of thee types:
1) LVM - Logical Volume Manager
2)SVM - Solaris Volume Manager
3)VxVM - Veritox  Volume Manager

LVM is created in three stages
1) Physical volume
2)Volume group
3)Logical volume

If we want to create the LVM partiton, first we need to change the type of the partition to LINUX LVM format.
The changing the format is nothing but change the partition's id

Physical Volume:(PV)
PV is giving a 'pvid' to the partition
```bash
#pvcreate  < partition name >
```

Volume Group:(VG)
VG is used to combine the physical volumes into the single container
```bash
#vgcreate  <VG name >  < pv1 >  <pv2>  < pv3 >
```

Logical Volume ;(LV)
LV is the partition is used to store the data in the system
```bash
#lvcreate   -L  < how much size you want >   -n  < LV name >  < VG name >
```

Extents:
1.The smallest portition in the VG is known as the 'Extents'.
2.The entire VG is sub-divided into small parts is also known as 'Extents'.
3.The default size of the extent is 4MB, if we want we canchange the extent size to respectice sizes(2M, 8M, 16M, 32M)
4.There are two types of extents
i)physical extent
ii)logical extent

Physical Extent:(PE)
The default extent that we are getting in the VG is known as the Physical Extent.
The default size of  PE is 4MB

Logical Extent:(LE)
It is the extents that created automatically once you create the logical volume
The size of the logical extents is same as size of the physical extents , it means it is blindly follow the physical extents only

LVM creation:
```bash
#fdisk /dev/sdb
create partitions of respective sizes  2G,3G,3G
change the partitrion's type to LINUX LVM
```

command (m for help):t --> change the partition's system id
select partition(1-3, default 3):
HEX code (type L to list all codes): L
HEX code (type L to list all codes):8e
Change the partition from 'linux' to 'linux lvm'

Do  this all the three partitions

```bash
#partprobe
creating pv
#pvcreate   /dev/sdb1 /dev/sdb2  /dev/sdb3
creating vg
#vgcreate   redhat  /dev/sdb1 /dev/sdb2  /dev/sdb3
creating LV
#lvcreate  -L  5G  -n  linux  redhat
```

```bash
#fdisk -l (to display the devices )
#mkfs.ext4  /dev/mapper/redhat-linux
#mkdir  /lvm
#vim  /etc/fstab
/dev/mapper/redhat-linux	/lvm	ext4	defaults	1	1
or
/dev/redhat/linux (lv path)
```

```bash
#mount -a --> to mount the partition
#df -h  --> to display the mount points
```

Delete a partition;
Step 1:
umount the filsystem

Step 2:
Remove the entry in the fstab file

Step 3:
Delete the logical volume LV

Step 4:
Remove the partition in the volume group

Step 5:
delete the physical volume

Step 6;
Now enter into the default utility and the delete the partition

Steps:
1. #umount /lvm
2.#vim /etc/fstab
remove the lvm entry
3.#lvremove  < lv path >
```bash
#lvremove  /dev/redhat/linux
4. vgremove   <vg name >
#vgremove redhat
5. #pvremove  < pv name >
#pvremove /dev/sdb1 /dev/sdb2 /dev/sdb3
#fdisk /dev/sdb
delete a partition
```

Extending the logical volume:
Ext filesystems:(ext2,ext3,ext4)

It is used to increase the capacity of the filsystem online
Command to increase the partition
```bash
#lvextend   -L   < how much size you want to extend along with + symbol >   < partition name>
#lvextend  -L  +500M  /dev/redhat/linux
```

This  will extend only size but the extended partition doesn't have the filesystem we need to extend filsesystem by manaully
```bash
#resize2fs   /dev/redhat /linux
```

xfs filesystem:
Command to increase the partition
```bash
#lvextend   -L   < how much size you want to extend along with + symbol >   < partition name>
#lvextend  -L  +500M  /dev/redhat/linux
```

Command to extend the xfs filesystem
```bash
#xfs_growfs   /dev/redhat/linux
```

Reducing the logical volume;
Reduce the LV , it will do only extended filesystem not for xfs filesytem
The steps are:
1. unmount filesystem
2.check the filesystem
3.reduce the filesystem
4.remount the filesystem

Example;
```bash
#umount /lvm
#e2fsck -f /dev/redhat/linux
#resize2fs  /dev/redhat/linux 2G
#lvreduce  /dev/redhat/linux  -L 2G
#mount -a
#df -h
```

Commands:
1.Command to display  the logical volume
```bash
#lvdisplay
```

2..Command to display  the  volume group
```bash
#vgdisplay
```

3..Command to display  the physical volume
```bash
#pvdisplay
```

4.Command to rename  the logical volume
```bash
#lvrename  <  lvpath  >  < new lv name >
#lvrename  /dev/redhat/linux   dog
```

5.Command to rename the volume group
```bash
#vgrename  < old vg name > < new vg name >
#vgrename  redhat  linux
```

6. Command to create a lv partition of 'n' extents
```bash
#lvcreate  -l  < extents value>  -n  <lv name  > < vgname >
#lvcreate  -l  20  -n  ball  dog
```

7. command to change the extent size
```bash
#vgcreate  -s  < extent size>  < vgname >  < pv names>
#vgcreate  -s  16M dog  /dev/sdb1 /dev/sdb2
```

8.Command to extend the volume group
```bash
#vgextend  < vg name >  < pv name >
#vgextend  dog  /dev/sdb2
```

9.Command to reduce the volume group
```bash
#vgreduce < vg name >  < pv name >
#vgreduce  dog   /dev/sdb2
```

10. Commad to merge two vg's
```bash
#vgmerge  < vg1 >  <vg2 >
#vgmerge  dog orange
```

NOTE:
1. The main configuration file of the lvm is  /etc/lvm/lvm.conf
2. The metadata areas of the logical volume is stored in the /etc/lvm/archive  directory
3. The metadata areas backup is stored in the /etc/lvm/backup  directory

RAID: (Redundancy Array of Independent Disk)
It is used to backup the data of the hard disk
There are two types of RAID's
1.Software Raid
2.Hardware Raid

Distributions of RAID:
1.RAID 0 -->Concatenation
2.RAID 0 -->Stripping
3.RAID 1 --> Mirroring
4.RAID 5 --> Stripping with parity
5.RAID 6 --> Distributive RAID
6.RAID 10 --> stripping + mirroring
7.RAID 50
8.RAID 60
9.RAID 5+ SPARE


## User Administration



## Group:

It is the collection of users
There are two types of groups. They are:
1.Primary Group
2.Secondary Group

Primary Group:
Each and every user must be a member of one group with the same name, that group is called as primary group
(or)
At the time of user creation, the group also will created that group is called Primary group
-- There is only one primary group will be there for every user.

Secondary group:
A user must be a member of another group, so those group called as seccondary group.
There is 15 secondary secondary groups will be there for single user.(theoretical)
In pratical, there are 100 groups we can create for the single user.

Information:
1. The groups information is stored in the etc directory, the location is  /etc/group
2. By default, groups having the unique ID's called as 'Group ID (GID)'
3. The root group ID is zero(0).
4. The syntax of the group entry in that file
group name:x:GID:<user names>
5.The group passwords information is stored in  /etc/gshadow
6. The passwords stored in the shadow is in Encrypted Format
7.The default encryption method in RHEL-7 is SHA512(Secured Hash Algorithm)

Commands:
1. Command to create a group
```bash
#groupadd   < groupname >
#groupadd  public
```

2.Command to display the group information
```bash
#getent  group(file name in etc directory)  < groupname >
#getent  group  public
```

3. Command to create group password
```bash
#gpasswd  <  groupname >
#gpasswd public
```

4. Command to change the group name
```bash
#groupmod   --new-name (or) -n    <new group name >  < old grp name>
#groupmod  -n  station  public
```

5.Comand to change the group ID
```bash
#groupmod  --gid (or) -g    < new GID >  <group name >
#groupmod  -g  1400  station
```

6.Command to add users to a group
```bash
#groupmems   -g  < group name >   -a  < username >
#groupmems   -g   station  -a  apple
-g --> group
-a  --> add
(or)
#gpasswd  -a(or) --add  < user name > <group name >
#gpasswd  -a  orange station
```

7.Commad to remove users to group
```bash
#groupmems  -g  <groupname >  -d  <username >
#groupmems  -g  station -d  apple
(or)
#gpasswd  --delete(or) -d  <user name >  <groupname>
```

8.Command to remove the group password
```bash
#gpasswd   -r (or) --remove-password   <group name >
#gpasswd  -r  station
```

9.Command to view the users in the group
```bash
#getent group  < groupname>
```

10.Command to delete the group
```bash
#groupdel <groupname>
#groupdel  station
```

Extra:
Command to create group with new GID
```bash
#groupadd  -g  < new GID >  <groupname>
#groupadd  -g   1232  sunny
```


## Users:

The files and directories must and should create by any user.
(or)
If you want to interact with the operating system, we need some credentials to login those are called as USER.

Information:
1. The users information is stored in the /etc/passwd  file
2. By default, kernel provide unique ID's to the users those are called as UID(user ID)
3.The root user UID is 0(zero)
4.The normal users UID starting from 1000 onwards
5.The system users are starting from UID 201 onwards
6.The sysntax of the user entry in the /etc/passwd file is
username:x:UID:GID:some comment:user's home directory:respective shell
7.The passwords information of user's is stored in  /etc/shadow file
8.The syntax of the passwords entry in the shadow file is
username:password in encryption format:last time change password in days from 1970 jan 1st:min days to change password:max days we can login with that password:warning days before to intimate:inactive time: expiry the account:some commen
t:
9.The password default settings is stored in /etc/login.defs file
10.The shells information is stored in /etc/shells
11. The passwords is stored in SHA512 encryption method

NOTE:
1.The other encryption methods are SHA256(secured hash algorithm)
MD5(message direct 5)

Commads:
1.Command to create user
```bash
#useradd  < username >
#useradd  sunny
```

Info:
1.If a user is created, what and all createdalong withe the user?
i)It will make an entry in the /etc/passwd file
ii)It will create group with the same name along same ID (GID)
iii)It will create user's home directory
iv)It will create bash scripts for behaviour of the users

2.The USERADD command default settings is stored in /etc/default/useradd
3.The bash scripts that are copied to user's home directory from /etc/skel directory

2.Command to login to the user
```bash
#su  - <username>
#su  - sunny   su ---> switch user
```

3.Command to display the user info
```bash
#getent  passwd (file name in etc directory )   <username>
#getent passwd  sunny
```

4. Command to come back to the user again
```bash
#logout
#exit
ctrl+d
```

5.Command to create password for users
```bash
#passwd  < username >
New password:
Re-type new password:
(or)
#echo  " (whatever password we have to give in inverted commas)" |  passwd   --stdin  <username>
```

```bash
#passwd  sunny
New password:
Re-type new password:
(or)
#echo  "sunny@123"   |  passwd --stdin  sunny
```

6.Command to rename the user
```bash
#usermod  --login (or) -l  <new username >  < old username>
#usermod -l  redhat sunny
```

7.Command to change UID to the user
```bash
#usermod  --uid (or) -u  < new UID >  <username>
#usermod  -u  1232 redhat
```

8.Command  to change the primary group of the user
```bash
#usermod  --gid (or) -g  < new group GID >  < username>
#usermod  -g  1002  redhat
```

9.Command to add secondary group to the user
```bash
#usermod  --groups (or)  -G  < secondary group name >  < username >
#usermod  -G  apple   redhat
```

10.Command to check the user to the groups
```bash
#id  <username >
#su  -c  "groups"  < username >
#groups  <username>
```

```bash
#id redhat
#su -c "groups" redhat
#groups redhat
```

11.Command to give comment to the user
```bash
#usermod   --comment (or) -c  "comment have to write in inverted commas"  <username>
#usermod -c " redhat is linux os"  redhat
```

12.Command to change the user's home directory
```bash
#usermod --home (or) -d  < have to give different path >  < username>
#usermod  -d  /redhat  redhat
```

13.Command to change the shell
```bash
#usermod  --shell (or) -s  < new shell>  < username >
#usermod  -s  /bin/sh  redhat
```

14.Command to append the user to multiple groups
```bash
#usermod --append (or) -a  -G  < groupname >  <username>
#usermod  -aG (or) -a -G sunny redhat
```

15.Command to delete the user
```bash
#userdel  <username>
#userdel  redhat
```

16.Command to delete user along with home directory
```bash
#userdel  -r  <username>
#userdel -r sunny
```

NOTE:
1. Command to create user with different UID
```bash
#useradd   -u (or) --uid  1440 dog
```

2. Command to create user with differnt GID
```bash
#useradd  -g (or) --gid  1001  funbob
```

3.Commad to create user with comment
```bash
#useradd  -c (or) --comment   "dead is bad"  horror
```

4.Command to create user with different home directory
```bash
#useradd  --home-dir (or) -d  /pebble  stones
```

5.Command to create user with different shell
```bash
#useradd   --shell (or) -s   /bin/sh  sam
```

6. If we change the user's home directory by default it doesn't have permissions to save any data
so we have to give permissions by manually usind chmod or acl method
7.If we login into the user with having different home directory, the profile won't be available
so we have to copy the bash scripts to the home dir
```bash
#cp  /etc/skel/.bash*  < path>
```

Change Ownerships:
In this concept,we are goingto change the ownership of the files and directories

1.Command to check the ownership of the files and directories
```bash
#ls  -l  < file /dir>
```

2.Command to change the ownership of the files
```bash
#chown  < username >  <file/dir>
#chown  apple  dumpfile
#chown  -R  ball   dir1
-R -->recursive
```

3.Command to change group ownership of the files and directories
```bash
#chgrp  < groupname>  <file/dir>
(or)
#chown  :<groupname>  <file/dir>
```

```bash
#chgrp   sunny    dumpfile
#chown :devil  dumpfile
#chgrp -R sunny  dir1
```

3.Command to change both user and group ownerships of the files and directories
```bash
#chown  username:groupname   < file/dir >
#chown   sun:moon  file
```


Password Algorithm:
The passwords information of the users is stored in /etc/shadow file
The settings of the passwords info is  stored in /etc/login.defs file
The synatax of the entry is
username:password:last change password in days:min days:max days:warning days:inactive time:expire date:comment

Commands:
1.Command to list the details of the user
```bash
#chage   --list (or) -l  <username>
#chage  -l  apple
```

2.Command to change the mindays to change user password
```bash
#chage   --mindays (or)  -m  < number >  <username>
#chage  -m 10  linux
```

3.Command to change the maxdays to login with the same password
```bash
#chage  --maxdays (or) -M  <number>  <username>
#chage  -M  40  linux
```

4.Command to change warning time of the user password
```bash
#chage  --warndays (or) -W <no. of days>  <username>
#chage   -W  2  linux
```

5.Command to chage  Inactive time for the password
```bash
#Chage  --inactive (or) -I  <no. of days >  <username>
#chage   -I  2  linux
```

6.Command to expire the user account
```bash
#chage  --expiredate (or) -E  <expire format YYYY-MM-DD>  <username>
#chage  -E  2017-12-22  linux
```

7.Command to change all password entries at a  time
```bash
#chage  <username >
#chage  linux
```


ACL:(Access Control List)
It is used as giving permissons for single user or single group
They are two types of entries are avialable for assigning permissions
1.Trivial entry
2.Non-trivial entry

Trivial entry:
The permissions that are given by 'chmod'  is known as the Trivial entry
We can identify trivial entry by using the command 'ls -l'
ex:
```bash
#touch f1
#ls -l  f1
-rw-r--r-- .
```

Non-trivial entry:
The permissions that are given by the ACL method is known as the Non-trivial entry
ex:
```bash
#touch  a1
#ls -l a1
-rw-r--r--+
```

Commands:
1.Command to assign the ACL permission to the file/directory
```bash
#setfacl  -m  u:<username>:permissions, g:<groupname>:permissions    file (or)  directory
#setfacl  -m  u:ball:rw,g:sunny:rw   f1 a1
-m --> modify
```

2.Command to remove the ACL permission
```bash
#setfacl  -x  u:sunny  f1
```

3. Command to remove all ACL permissions
```bash
#setfacl   -b  f1
```

4.Commad to display the ACL permissions
```bash
#getfacl   file (or) directory
#getfacl  f1
```

Special Permissions
There are three Categories of Special permissions
1.SUID(set UID)
2.SGID(set GID)
3.Sticky bit

SUID:
If we assign SUID permission to the files, you are the only owner to can change the file data,permissions..etc
SUID value is 4
Command to give SUID permission to file
```bash
#chmod 4644  f1
#chmod u+s a1
#ls -l a1 f1
```

SGID:
The SGID permission applicable on directories.
If we change the group ownership of the directory, the inside files will not change the ownership.
So we can we use the recurisve option to change the inside files ownership but it will not change to the next files
So that we can use the SGID permission to inherit the group ownership of the files inside directory.

Command to give SGID permission
```bash
#chmod 2755 d1
#chmod g+s  d1
#ls  -l  d1
```

Sticky bit:
It is applicable on directories for providing more  secure to the directories

Command to assign stickybit
```bash
#chmod  1755  d1
#chmod  +t  d1
#ls -l  d1
```

Disk Quota:
It is used to restrict the space for the users in the system

```bash
#fdisk /dev/sdb
create partition of 5GB
#mkfs.ext4   /dev/sdb1
#mkdir  /redhat
#vim /etc/fstab
/dev/sdb1	/redhat	ext4	defaults,usrquota,grpquota	0	0
:wq!
#mount -a
#df -h
#chmod 777 /redhat
#usermod  -d  /redhat sunny
#quotacheck  -cugf   /redhat
-cugf -->  check user group forcefully
#edquota  sunny (username)
Filesystem   blocks	soft	hard	Inodes	soft	hard
/dev/sdb1      24	0	0	 11	40	50
```

```bash
#quotaon  -v  /redhat
-v --> verbose
#su  -  sunny
-bash-4.2$ ls
-bash-4.2$touch  f{1..30}
sdb1:warning,userfile quota exceeded
-bash-4.2$ touch a{1..10}
write failed, user file limit reached
```


## Jobs:

It is defined as the completing the tasks in the give time.
There are two types of jobs. They are:
i)at job
ii)cron job

At job:
Single time execution job is known as the 'at job'

Comamnds:
1.Commad to create job
```bash
#at  09:30 PM
at>touch f{1..5}
at>(ctrl+d) to save job
```

```bash
#at  now+5min
at>mkdir a{1..5}
at>echo "enjoy the day"
at> (ctrl +d)
```


2.Command to list the jobs
```bash
#at  -l  (or) #atq
-l --> list
```

3. Command to delete  the job
```bash
#at  -r  <job id>
-r --> remove
```

4.Command to view the job
```bash
#at  -c   <job id>
-c --> code
```

Cron Job:
Multiple time execution of  job is known  as cron jobs.
Cron jobs edited in the crontab(cron table)
The crontab is located in the /tmp directory to edit the jobs
The cron table formation is stored in /etc/crontab
The daemon responsible for cron job  is 'crond'

Commads:
1.Commad to edit the cron job
```bash
#crontab -e
-e --> edit
```

2.Commad to remove all cron jobs
```bash
#crontab  -r
-r --> remove
```

3.Command to list the cron jobs
```bash
#cron tab  -l
-l  --> list
```

4.Command to edit cron job for different user
```bash
#crontab -e  -u  <username>
```

Crontab entry;
```bash
#crontab -e
15	17	14	11	2	/usr/bin/touch  /root/Desktop/fun
```

15	17	14	11	*   <job>   --->  every year
15	17	14	*	*   <job>   --> every month
15	17	*	*	*    <job >   ----> every day
15	*	*	*	*   <job >    ----> every hour
*	*	*	*	*   <job>    --->  every minute
15	5,17	*	*	*   <job>    ---> every day two times
14	02	*	*	1,2,3   <job>   ---> every week mon,tue,wed

NOTE:
1) If any username is written in  /etc/cron.deny file,  the user cannot perform  cron jobs.



## Rpm:

If you want any package in the RHEL machine, we need to install the .rpm files
RPM stands for REDHAT PACKAGE MANAGEMENT
In RHEL machine, rpm available in the form of bundles
Bundles means the collection of RPM's(more than one rpm)
RPM syntax:
package name-version-release version.architecture.rpm
--Each RPM consists of three components which is in the form of the archieve
1.Files
2.Meta Data
3.Scripts

File-It is installed by the package
Meta Data -  Information about the package
(name,version,release,architecture,filesystem etc)
Scripts--> which is available in the package when it is installed, updated,removed.

Package-
1.  Package consists of container of files.It includes the group of files associated with specific programs
which normally include binary information scripts as well as configuration and documentation files
2.It also includes how and where the packages want to installed & uninstalled
3.Many packages are CPU specific

Redhat Package:
1.RPM has a database in their systems.
2.Database tracks version and location of each and every file of the packages in the system
3.RPM database also maintains MD5 checksum(encrytption) of each file
4.RPM database is also easy to remove&add packages in their database.
5.The RPM database is also called as repository

Repository:
RPM packages are frquently organized in the repositories
It includes the group of packages within the reposotories

RPM Installation Security:
1. Security can be a concern, especially with rpm packages downloaded into the systems
2. The keys are GPG keys ( GNU Privacy Guard ) which is open source implementation of security for rpm's in the system
3. If the installation is secure, the GPG keys have to be there in the system, if it is not available we have to import
from the internet
4. The default location of GPG keys is  /etc/pki/rpm-gpg  directory

How to Import:
```bash
#rpm    --import   /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
```

Analyzing the RPM package:
apache-commons-pool-| 1.6-| 9.el7 | .noarch | .rpm
1	           2	3	4     5

1 --> package name
2---> package version
3--->  kernel release version
4---> architecture
5 --> extension

Commands:
1. Command to list the installed packages
```bash
#rpm  -qa
-q  --> query
-a  --> all
```

2.Command to count the installed packages
```bash
#rpm  -qa  |   wc  -l
```

3.Command to search the package whether it is installed or not
```bash
#rpm   -qa  |  grep  <package name>
```

4.Command to display the information about the package
```bash
#rpm   -qi   <package name>
-q --> query
-i  --> information
```

5.Command to install the package
```bash
#rpm  -i (or) --install  <package name >
```

6.Command to upgrade the RPM package
```bash
#rpm  -Uvh (or) --upgrade  <package name>
```

7.Command to delete the RPm package
```bash
#rpm  -e  (or) --erase < package name >
```

8.Command to dispaly the files in the package
```bash
#rpm  -ql  <package name >
-l -->  list
```

9.Command to display the configuration files
```bash
#rpm  -qlc  <package name>
```

10.Command to display the documentation files
```bash
#rpm  -qld  <package name>
```

11.Command to display the script of the package
```bash
#rpm  -q  --scripts  < package name>
```

12.Command to dispaly the dependency package
```bash
#rpm   -qR  <package name >
R--> require
```

13.Command to display the package about the system files
```bash
#rpm  -qf   <system file >
#rpm  -qf   /usr/bin/chmod
#rpm -qf  /etc/lvm
```

14.Commad to set default permissions to the package
```bash
#rpm  --setperms   <package name>
```

15.Command to set default ownerships of the package
```bash
#rpm   --setugids   <package name >
```

16.Command to reinstall the package
```bash
#rpm   -Uvh  --replacepkgs   <package name >
```

17.Command to verify the package
```bash
#rpm  -Va
-V --> verify
a --> all
```

18.Command to display the state of the package
```bash
#rpm  -qs  <package name >
```

19.Command to display the version of the package
```bash
#rpm  --version
help command:
#man  rpm
#rpm  --help
```

Note ;
When we verifuy the package, we get some output with options
M -->  mode (permissions)
S --> Size
5 --> MD5 checksum
T --> Timestamp
U --> User ownership changes
G --> Group ownership changes
l --> Symbolic Link
c --> configuration file
l --> license file
r --> require file

Disadvantage:
RPM will not  resolve dependencies when we try to install the package
if we want to install packages with RPM, we have to be in that directory otherwise it won't install

YUM: (yellowdog update manager)
YUM is an interactive RPM based manager
It can automatically perform system updates including analysis and absolute processing based on repository
It can also perform installation, removal, update and other queries can we do like RPM
***The main advantage of YUM is to resolve the dependencies of the packages***
***YUM is also have another advantage to create a YUM server to install in the client packages***
If we want to install the packages using YUM, we need a repository in the default location
The default location of YUM repository is  /etc/yum.repos.d/ with '.repo' name extension
The package responsible for YUM is "yum"
The default configuration file of the YUM is  /etc/yum.conf

How to create repo in the RHEL:
```bash
#mount  -o   loop   /root/Desktop/rhel.iso   /media
#cd  /media
#cp  -r  Packages   /Packages
#cd   /Packages
#rpm  -ivh  createrepo<press tab>
#createrepo   /Packages
#vim   /etc/yum.repos.d/yum.repo
[repo_id]
name = yum new server
baseurl=file:///Packages
enabled=1
gpgcheck=0
:wq!
#yum clean all
#yum repolist all
```

Commands:
1.Command to display the repository
```bash
#yum repolist all
```

2.Command to update the repo
```bash
#yum clean all
```

3.Command to list all packages
```bash
#yum list all
```

4.Command to search a package
```bash
#yum search  <pkg name>
```

5.Command to display information about a package
```bash
#yum info  < package name >
```

6. Command to install package
```bash
#yum install <pkg name >
#yum install <pkg name>  -y
```

7.Command  to update package
```bash
#yum update  <pkg name>
```

8.Command to remove  package
```bash
#yum  remove  < pkg  name>
```

9.Command to display  dependency packages
```bash
#yum deplist  <pkg name>
```

10.Command to list files in the package
```bash
#repoquery   -l  <pkg  name>
```

11.Command to display the package about the respective  file
```bash
#yum  provides  <filename>
```

12.Command to install the group packages
```bash
#yum groupinstall   <package name>
```

13.Command to reinstall a package
```bash
#yum reinstall   <package name>
```

14.Command to list history of the packages using yum(install,unintall,update)
```bash
#yum history
#yum history  info  <number>
```

15.Command to downgrade the package
```bash
#yum downgrade  <pkg name>
```

16.Command to verify package
```bash
#yum verify  <pkg name>
```

17.Command to list installed packages
```bash
#yum list installed
```

18.Command to list uninstalled packages
```bash
#yum  list  available
```

Process Management:
It is defined as the tasks that are going to complete in time, known as Process.
It is also defined as the set of instructions loaded to the memory (or) programs under execution known as Process
The Process types are :
1. Static Process
2. Dynamic Process
3. Zombie Process
4. Orphan Process
5.Foreground Process
6. Background Process

Static Process:
The process that is continuously working in the backend of the system after the system has booted,that process is known as
Static Process
ex: time service, date service etc

Dynamic Process:
The process that has continuously working and changing by time to time under system execution is known as the Dynamic Process

Zombie Process;
The process is stillworking even when the existing process are dead, that process is known as the Zombie process

Orphan Process:
The process that doesn't have parent process is known as the Orphan Process.

Commands:
1.Command to disply the constant process
```bash
#ps
We will get output of PID,TTY,time taken to do that process,Command
```

2.Command to display all process of users
```bash
#ps  -au
a--> all
u--> users
```

3.Command to print all process by root user
```bash
#ps  -aux
x--> BSD format     (BSD ---> Berkeley Software Distribution)
```

4.Command to display the process in tree format
```bash
#pstree
```

5.Command to display process in required output
```bash
#ps  -o   pid,ppid,time,etime,command
etime --> elapsed time
From how much time since this process is running
```

6.Command to display process for particular service
```bash
#ps  -c  <service name>
#ps  -c  sshd.service
```

7.Command to display process for particular user
```bash
#ps  -f -u  <username>
```

8.Command to display the dynamic process
```bash
#top
#htop
```

TOP command explanation:
1.The first line in the top command known as the "uptime"
In this line it is showing
a)how much time onwards this system is running
b)How many users are running
c)Load average on CPU for 3,5,15 min
2.How many tasks are running in the system
3.Percentage of CPU utilisation
a)user's utilisation
b)system utilisation
c)nice priority utilisation
d)Unused utilisation
e)Waiting process responce utilisation
f)Hardware interrupt utilisation
g)Software utilisation
i)Stolen time--> The amount of CPU stolen from VM by hypervisorfor other tasks(steal time)
4.Memory utilisation
5.Swap partition utilisation

Following options:
PTD, USER,
PR -- priority of process
NI  -- Nice value of process
VIRT -- virtual memory used by process
RES  -- Physical memory used by process
SHR -- Shared memory used by process
S -- status of process
S--sleep, R -- running, Z-- zombie

Shortcuts:
1. l --> to display (or) hide the load average
2. t --> to display (or) hide the Tasks (cpu line)
3. 1(one number) --> to display (or) hide the all CPU line
4. m  --> to display (or) hide the RAM and SWAP details
5. R --> sort by PID
6. u --> Press 'u' button and then type the username, it will show the only user process
7. P --> sort by CPU utilisation
8. M --> RAM utilisation
9. r --> renice a process
10.k --> kill a process
11.w --> save modified
12.q --> quit the top command
13.h --> getting help on top command



## Nice:

It is known as the priority of the process
Range of the nice value is -20 to +19
The highest priority having the lowest NICE value

Command to assign nice value to process
```bash
#nice  <value>  <PID>
```

Signals:
Signal is an interrupt  used for killing process. The common used signals are:

Command to kill  a process
```bash
#kill <pid>
#pkill  <pid>
```

Command to kill proces using signal
```bash
#kill  -9  <pid>
#kill  SIGKILL  <pid>
```

Command to terminate a process
```bash
#kill  -15  <pid>
#kill  SIGTERM   <pid>
```

Command to list the signals
```bash
#kill  -l
```

Command to kill all process by users
```bash
#killall  -u  <username>
```

Booting Process:
1. Power on machine
2.POST
3.BIOS
4.Identify the Boot loader
5.Identify the kernel
6.Mount the root file system
7.Mount the other file system
8.Start all the required services
9.Check the default environment (GUI, TUI) in default target file

1.When we power on the machine, the system enters into the POST mode
POST --> Power on self test
2. In this mode, whether all hardware devices getting power supply or not
3.After that system enters into the BIOS mode
BIOS --> Basic Input Output System
4.After this mode, the system will check the boot loader
In RHEL 7  machine, the default bootloader is GRUB2(grant unify bootloader version2)
The other name of bootloader is MBR(master boot record)
5.The first 512 bytes of MBR is known as the MBR
6.The first 512 bytes is subdivided into three parts
i)446 bytes --> Primary Boot Record
ii)64 bytes --> info about filesystem
iii)2 bytes --> MBR validation check
7. The primary responsibility of MBR is used to identify the Default kernel
8.After identifying the kernel, the bootloader hands over the control of the system to the kernel and loaded them inti memory
9.Once the kernel takes control of the system, the process will start
10.The first process is known as the PID 1, the process name is "systemd"
11.After the process start, the systemd mount the root file system(initramfs)
initramfs --> initial ram filesystem
12.After the mounting,the system has a copy of init daemon and udev daemon on the initial process
13.The kernel root filsystem  is switches from system rootfilesystem to the OS root filesystem
14.After that system will start all the required services
15.The final step is read the interface files(GUI or TUI)
16.The interface file is stored in the default target file, the file is /etc/systemd/systemd/default.target


Breaking the root password:
1.Power on the machine  (or) reboot your machine
2.Press 'e' button to edit the kernel
3.Go to end of the line starting with 'linux16' and add rd.break
4.Then press ctrl+x to start next step
5.We need to remount the system root filesytem
```bash
#mount -o rw,remount  /sysroot
6.Change the system from emergency mode into root environment
#chroot  /sysroot
7.Give password to the root user
#passwd  root
New password:
Re-type new password:
8.Recreate the entire labelling on the system
#touch  /.autorelabel
9.Exit from the emergency mode
#exit
10.Exit from the shell
#exit
```

After that the system will automatically reboot with new login credentials


Systemd:
It is the first process when the OS is loaded into the memory.
--->'d' represents daemon. The daemon is the background process that is running in the system
when the OS is loaded for every service.
--->The services are running when the system is start, it is waiting for the user interaction.

In RHEL-7, "systemd" is the first processs
In RHEl-6, "init" is the first processs
Systemd takes reponsibility in the system for control each and everything to be work effectively or not..
The PID of systemd is 1(one).
-->Systemctl is the tool used for controlling the systemd features
--> systemctl is the default tool that are available from the system when the OS is installed.

Commads:
1.Command to display the units that are controlled by systemd
```bash
#systemctl -t help
```

2.Command to display the time how much the system gets boot
```bash
#systemd-analyze time
```

3.Command to display what all are services when the system gets booted
```bash
#systemd-analyze blame
```

4.Command to display the services in tree format
```bash
#systemd-analyze critical-chain
```

Systemctl commands:
1.Command to display the total units that are controlled by systemd
```bash
#systemctl  list-units
```

2.Command to display all the units states controlled by systemd
```bash
#systemctl list-unit-files
```

3.Command to display the total units are available for single unit seperately
```bash
#systemctl  list-units  --type=target   --all (or) -a
```

4.Command to start the unit
```bash
#systemctl start <unit name>
```

5.Command to stop  unit
```bash
#systemctl stop <unit name>
```

6.Command to restart unit
```bash
#systemctl restrart  <unit name>
```

7.Command to reload the unit
```bash
#systemctl reload <unit name>
```

8.Command to poweroff the system
```bash
#systemctl poweroff
```

9.Command to reboot the machine
```bash
#systemctl reboot
```

10. Command to enable the unit
```bash
#systemctl enable  <unit name>
```

11.Command to reload the daemon
```bash
#systemctl daemon-reload
```

12.Command to display the default target
```bash
#systemctl get-default
```

13.Command to list the ipr services list
```bash
#service  --list-all
```

14.Command to dispaly the status of systemd unit
```bash
#systemctl status <unit name>(service,socket,slice,target)
```


Targets:
Targets define the state of the machine
It means that the sytem are available in which state.
systemd controls target of the machine

Commads:
1.Command to display the targets that are available in the system
```bash
#systemctl  list-units  --type=target  --all
```

2.Command to display the default target
```bash
#systemctl get-default
```

3.Command to change the target temporarily
```bash
#systemctl  isolate  <target name>
#systemctl  isolate  multi-user.target
```

4.Command to change target permanently
```bash
#systemctl  set-default  multi-user.target
#reboot
```

Once the reboot the system, the system will get new interface

The default location of the systemd target is
/etc/systemd/system/default.target

In RHEL-6,"init" is the first process that are contolled everything in the system
In RHEL-7,"init" is replaced by "target"

RHEL-6 Commands

1.init 0 --> poweroff the system
2.init 1
3.init 2 -->  Multi-user system without NFS
4.init 3 --> Multi-user system with NFS
5.init 4
6.init 5 --> Graphical Interface
7.init 6 --> Reboot

Networking:
It is the concept that the machines are communicate to each other in the  newtowk
Machines  that are communicate to each other using IP addresses.
There are two types of IP addresses. They are:-
1.IPV4 address
2.IPV6 address

IPV4:
1.It is a 32 bit ip addressing
2.The bits that are enrolled in the IP address is binary numbers
3.There are four billion ip addresses that are created through IPV4.
4.There are two types addressing are available
i)Public Ip address
ii)Private Ip address

Pubic Ip address:
A public IP address is an IP address that can be accessed over the Internet. Like postal address used to deliver a postal mail to your home,
a public IP address is the globally unique IP address assigned to a computing device.

Private IP address:
Private IP address, on the other hand, is used to assign computers within your private space without letting them directly expose to the Internet.

For example, if you have multiple computers within your home you may want to use private IP addresses to address each computer within your home.
In this scenario, your router gets the public IP address, and each of the computers, tablets and smartphones connected to your router
(via wired or wifi) gets a private IP address from your router via DHCP protocol.

Notes:
1. IPv4 Addresses ranges from 0 to 255
2. The Range is 0.0.0.0 to 255.255.255.255 (4 billion IP's)
(00000000.00000000.00000000.00000000 to 11111111.11111111.11111111.11111111)
3.IP addresses are sub-divided into five classes
i)class -A --->0.0.0.0 to 126.255.255.255
ii)class -B --->128.0.0.0  to 191.255.255.255
iii) class -C ---> 192.0.0.0 to 223.255.255.255
iv) class -D ---> 224.0.0.0 to 239.255.255.255
v) class -E --->240.0.0.0 to 255.255.255.255
4.Mostly, we are using the three classes only (class A,B,C)
5.The loopback address of the IPV4 is 127.0.0.1
6.
The private Ip addresses are :
Class	Starting IP Address	Ending IP Address	No. of Hosts
A	10.0.0.0		10.255.255.255	16,777,216
B	172.16.0.0		172.31.255.255	1,048,576
C	192.168.0.0	192.168.255.255	65,536
7.IPv4 is sub-divided into octets, IPv4 has 4 octets

IPv6 address:
1.It is 128 bit addressing
2.The range is 0000:0000:0000:0000:0000:0000:0000:0000 to ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
3.The IPv6 bits using as Hexa-decimal bits
4.One Hexa-decimal bit equal to 4 bits
5.IPv6 is sub-divided into groups
6.There are 8 groups and each group has 4 hexa-decimal bit
7.Each group has 16 bits
8.The Hexa-decimal bits are 0-9,a-f
9.The IPv6 address is seperated with :(colon)
10.The loopback address of IPv6 is ::1
The loopback address, 0000:0000:0000:0000:0000:0000:0000:0001, may be abbreviated to ::1 by using both rules.
11. IPv6 uses a 128-bit address, theoretically allowing 2^128, or approximately 3.410^38 addresses.

IPv6 Rules:
For convenience, an IPv6 address may be abbreviated to shorter notations by application of the following rules.

1.One or more leading zeroes from any groups of hexadecimal digits are removed; this is usually done to either all or none of the leading zeroes.
For example, the group 0042 is converted to 42.
2.Consecutive sections of zeroes are replaced with a double colon (::).
The double colon may only be used once in an address, as multiple use would render the address indeterminate.


Example:
An example of application of these rules:

Initial address: 2001:0db8:0000:0000:0000:ff00:0042:8329
After removing all leading zeroes in each group: 2001:db8:0:0:0:ff00:42:8329
After omitting consecutive sections of zeroes: 2001:db8::ff00:42:8329

Subnet:
A subnetwork or subnet is a logical subdivision of an IP network. The practice of dividing a network into two or more networks is called subnetting.
For  class-A, the subnet value is 255.0.0.0 and CIDR notation is 8 bits
class-B, the subnet value is 255.255.0.0 and CIDR notation is 16 bits
class-C, the subnet value is 255.255.255.0 and CIDR notation is 24 bits

CIDR --> Classless  Inter Domain Routing

For example, 192.168.1.0/24, In this network we can connect 254 machines(IP's)
172.25.1.0/16, In this network we can connect 256*256-2 machines
10.0.0.0/8, In this network we can connect 256*256*256-2 machines

In trhe class-A, the first octet is network part and last three octets are Host part
Class-B, the first two octets are network part and last two octets are Host part
Class-C, the first three octets are network part and last octet is Host part

In every machine has NIC card (Network Interface Card)
Without NIC card, we can't get any network.
For every NIC card, there is a connection to connect the machine to other machines

Connection:
It is an IP settings to the NIC card(Ip address, subnet mask,DNS, gateway)

Device:
The device referred as the NIC card

Network Manager:
It is tool that is used to connect the connetions to the machine, and it is also create the configuration file in the default location
The configuration file is located in /etc/sysconfig/network-scripts directory

Commands;
1.Command to display the connections what all are available
```bash
#nmcli  connection  show (or) nmcli  con  s
```

2.Command to display the device settings
```bash
#nmcli device show (or) mncli dev show
```

3.Command to display the device status
```bash
#nmcli device status (or) nmcli dev s
```

4.Command to display the Ip addresses
```bash
#ifconfig  (or) ip -a -s  (or) ip addr show
```

5.Command to create a connection
```bash
#nmcli connection add con-name con1 type ethernet  ifname eno16777736
```

6.Command to delete a connection
```bash
#nmcli con del  <connection name>
```

7.Command to modify the connection
```bash
#nmcli connection modify(mod) eno19777736 ipv4.addresses "192.168.1.10/24 192.168.1.0" ipv4.method manual  ipv4.dns  192.168.1.0
```

8.Command to down the connection
```bash
#nmcli connection down <connection name>
```

9.Command to up the connection
```bash
#nmcli  connection up  <connection name>
```

The methods that are avaialble in the system to change the network interface
1.Graphical method
2.Command Method
3.nmtui
4.nm-connection-editor
5.nmcli connection edit <connection name>(eno167736)

10.Command to assign ipv6. address
```bash
#nmcli connection modify eno167736 ipv6.addresses ab::cd/128 ipv6.method manual  connection.autoconnect yes
#systemctl restart network
```

HOSTNAME:

1.Command to check the system name
```bash
#hostname
```

2.Command to check the detail info about machine
```bash
#hostnamectl
```

3.Command to set new hostname
```bash
#hostnamectl set-hostname  apple.localdomain
```

If you want to make your hostname permanant use this command #exec bash

SCP(secured copy);
It is used to copy data from one machine to another machine in s secured network

The syntax of the Secured copy is
```bash
#scp   <source >  <destination>
#scp   data(file/dir)  user@ip(or)hostname:/(path)
```

There are two types
1.Local to Remote
2.Remote to  Local

Local to Remote:
```bash
#scp  f1  root@192.168.238.132:/root/Desktop
It will ask that other machine root user password
#scp -r dir  root@192.168.238.132:/root/Desktop
```

Remote to Local
```bash
#scp root@192.168.238.132:/root/Desktop/a1   /root/Desktop
#scp  -r   root@192.168.238.132:/root/Desktop/dir1   /root/Desktop
```


SSH:(secured Shell)
It is a service that can login into from one machine to another machine in a secured network
The package responsible for SSH is OPENSSH
The daemon responsible for this service sshd
The configuration file of this service is /etc/ssh/sshd_config
The port number for the ssh service is 22

Note:
The port numbers is stored in Linux OS is /etc/services

Working:
server			client
1.#yum install -y openssh		2.#yum install -y openssh
3.#systemctl enable sshd.service		5..#systemctl enable sshd.service
4.#systemctl restart sshd.service		6.#systemctl restart sshd.service
.#ssh  user@ip(or)hostname
7.#ssh  root@client machine ip address
(192.168.238.132)
if we want to logout from that machine use command (logout,exit,ctrl+d)

Disallow root login:
server			client
1.go to ssh configuration file
```bash
#ssh root@client IP			#vim /etc/ssh/sshd_config
password:				 go to 48th line and then uncomment first
permission denied 				 permitrootlogin  no
:wq!
#systemctl restart  sshd.service
```

Deny the user:
server			client
1.Go to configuration file
```bash
#ssh ball@client IP			#vim /etc/ssh/sshd_config
password:				write these lines in that file anywhere
permission denied				Denyusers  ball
:wq!
#systemctl restart  sshd.service
Note:
If multiple users we want to deny means
Denyusers ball sunny
Denyusers all
```

Deny entire machine:
server			Client
2.				1.#vim /etc/hosts.deny
```bash
#ssh root@192.168.238.132		go to last line
unknown host(if we use hostname)	sshd:  either ip(or) domain(or)Range of IP's
ssh_exchange Identification:		sshd: 192.168.238.*
(connection reset by peer)		:wq!
#systemctl restart  sshd.service
```

Passwordless Login:
If we want to login to client machine using SSH protocol without password,we need to create
rsa keypair to the users.
Command to generate keypair
```bash
#ssh-keygen
```

Command to copy the key from your machine to another machine
```bash
#ssh-copy-id   root@192.168.238.132
It will ask existing user password
The key is copied to other machine this location /root/.ssh/Authorized_keys
```

There are two files are available in the /root/.ssh directory
1.authorized_keys
2.known_hosts

Authorized_keys:The file that has rsa keys getiiing from another machine
known_hosts:The file that you login to how many machines addresses

it will create rsa key fingerprint
ECDSA key fingerprint---> Elliptical curve Digital Signature Algorithm

SELINUX: (Security Enhanced Linux)
1. It is the top most security layer on the REDHAT Linux
2.It is used to protect the data of the file and to protect the content of the directory from unauthorized access
3.By settting CHMOD(change mode),ACL permissions it protects the data but it can't restrict the the process
that they are trying to access the files and directories.
4.It gives security context to each and every file in the system to provide more security for the files and directories.
5.SELinux provides three modes. They are:
i)Enforcing
ii)Permissive
iii)Disabled

Enforcing:  In this mode, Unauthorized process will be restricted and also logs will taken anyone trying to access
Permissive: In this mode, It allows unauthorized process and also logs will be taken anyone trying to access
Disabled:  In this mode, It allows unauthorized access and no logs will be taken

NOTES:
The configuration file for the SELinux mode is
/etc/sysconfig/selinux  (or) /etc/selinux/config

Commands:
1.Command to display the default selinux mode
```bash
#getenforce
```

2.Command to change the SElinux mode temporarily
```bash
#setenforce  permissive (or) setenforce 0
#setenforce enforcing  (or) setenforce 1
```

3.Command to display the SELinux status
```bash
#sestatus
```

The RPM responsible for the SELinux is "Selinux-policy"

Security Context:
SELinux provides each and every file gives a particular context on the system for the security reasons.
The syntax of the SELinux context is
SElinux user:selinux role:type of the context:level of security

The syntax only provide the security from unauthorized access for the files and directories

For checking:
```bash
#touch abc
```

1.Command to display the Selinux context
```bash
#ls -Z abc
```

2.Command to display the selinux users
```bash
#semanage login  -l
```

3.Command to display the selinux contexts on the system
```bash
#semanage fcontext -l
```

4.Command to display the selinux port contexts
```bash
#semanage port -l
```

5.Command to display the selinux booleans
```bash
#semanage boolean -l
```

6.Command to display the selinux modules
```bash
#semanage module  -l
```

There are two types of methods are used to change the selinux security contexts.They are:
i)chcon method
ii) Semanage tool(CLI tool)

Command to change the security context by using chcon method
```bash
#chcon  -t <selinux type>  <file / dir>
#chcon  -t httpd_sys_content_t   index.html
#chcon  -t samba_share_t  dir1
#chcon  -t samba_share_t   dir2 -R
t -->type
```

Command to restore the security context of the files
```bash
#restorecon  <file (or) dir>
#restorecon   index.html
#restorecon  -RFv   dir1
R --> recursive
F --> Forcefully
v  --> verbose
```

Command to change the security context by using semange tool
```bash
#semanage fcontext -a -t  samba_share_t   "/root/Desktop/f1(/.*)?"
#restorecon  -RFv  f1
```

Firewall:
1.It is used to filter the incoming and outgoing traffic in the system.
2.Firewall is managed by the daemon "firewalld"
3.Till RHEL 6, we used iptables for filtering the traffic
From RHEL 7 onwards, we are using firewall
4.Firewall are managed by zones
5.,Each zone has its own list of ports and services to be opened and closed.

A Firewalld zone defines as the level of trust for network connections, interfaces and addresses bound to the zone.
The zone combines the services,ports,protocols,ICMP filters,masquerading,port/packet forwarding and rich rules.

Command to open the firewall configurator
```bash
#firewall-config
```

There are nine zones are available block,dmz,drop,external,internal,home,public,trusted,work
The default firewall zone is public

Commands:
1.Command to display all zones
```bash
#firewall-cmd  --list-all-zones
```

2.Command to display the default zone
```bash
#firewall-cmd --get-default-zone
```

3.Command to display the default zone settings
```bash
#firewall-cmd  --list-all
```

4.Command to reload rhe firewall configuration
```bash
#firewall-cmd  --reload
```

5.Command to add the service to the firewall temporarily
```bash
#firewall-cmd  --add-service=nfs
The service that we are adding temporarily once after the reload your firewall
the services automatically removed from firewall
```

6.Command to add service permanently to the firewall
```bash
#firewall-cmd  --permanent  --add-service=nfs
#firewall-cmd  --add-service=samba  --permanent
```

Remove the service from firewall
```bash
#firewall-cmd --permanent  --remove-service=nfs
#firewall-cmd --reload
```

The ports that are stored in Linux OS is  /etc/services

7.Command to add port to the firewall
```bash
#firewall-cmd --permanent --add-port=22/tcp
```

8.Command to add masquerading the firewall
```bash
#firewall-cmd  --permanent  --add-masquerade
```

9.Command to add forward port to the firewall(local forwarding)
```bash
#firewall-cmd  --permanent  --add-forward-port=port=<to which port u wanted to forward>:proto(protocol)=tcp(or)udp:toport=<which port u forwarded>
#firewall-cmd  --permanent  --add-forward-port=port=1009:proto=tcp:toport=22
```

10.Command to add forward port to firewall(remote forwarding)
```bash
#firewall-cmd --permanent  --add-forward port=port=1009:proto=tcp:toport=22:toaddr=<other machine's ip (or) hostname>(192.168.238.139)
```


Rich rule:
Local forwarding
11.Command to add rich rule local forwarding to the machine
```bash
#firewall-cmd  --permanent --add-rich-rule 'rule family="ipv4" source address="192.168.238.129" forward-port to-port="22" protocol="tcp" port="1009"'
#firewall-cmd --reload
```

Remote Forwarding
```bash
#firewall-cmd  --permanent --add-rich-rule 'rule family="ipv4" source address="192.168.238.129" forward-port to-address to-addr="192.168.238.122" to-port="22" protocol="tcp" port="1009"'
#firewall-cmd --reload
```


NFS:(network File system)
It is a service used to transfer the data from one machine  to another machine through the network
NFS port number is 2049
The package responsible for NFS service is NFS-UTILS

Any service Installation:
1.Installation
2.Configuration
3.Service enable& restart
4.Firewall

NFS ( Read only )
SERVER SIDE Configuration:
1.Installation
2.Create one directory
3.exports file editing
4.service enable and restart
5.firewall

```bash
#yum install -y nfs-utils
#mkdir /nfs
#touch /nfs/f{1..5}
#vim /etc/exports
/nfs	192.168.238.132(ro,sync)  ro-->read only
:wq!
#exportfs -rv
r--> recursive
v-->verbose
#systemctl enable  nfs-server.service
#systemctl  restart  nfs-server.service
#firewall-cmd  --permanent  --add-service=nfs
#firewall-cmd  --reload
```

Client Side Configuration:
1.Installation
2.Create one directory
3.mount the directory to the system with NFS filesystem

```bash
#yum install -y nfs-utils
#mkdir  /data
#vim  /etc/fstab
192.168.238.129:/nfs	/data	nfs	defaults	0	0
(other machines IP or Hostname)
:wq!
#mount  -a
#df  -h (to display the mount points)
```

For checking:

```bash
#cd  /data
#ls
f1 f2 f3 f4 f5
#cat > f1
permission denied
Because the server gave only read only permission
```


NFS (read & write)

Server side Configuration:
```bash
#yum install -y nfs-utils
#mkdir  /nfs1
#touch /nfs1/f{1..5}
#vim  /etc/exports
/nfs1	192.168.238.132(rw,sync)
:wq!
#exportfs -rv
(if you want to read and write permissions for the data using NFS ,
we need to change the ownership of the files to "nfsnobody")
#chown -R nfsnobody  /nfs1
#systemctl enable  nfs-server.service
#systemctl  restart  nfs-server.service
#firewall-cmd  --permanent  --add-service=nfs
#firewall-cmd  --reload
```

Client side Configuration

```bash
#yum install -y nfs-utils
#mkdir  /data1
#vim  /etc/fstab
192.168.238.129:/nfs1	/data1	nfs	defaults	0	0
(other machines IP or Hostname)
:wq!
#mount  -a
#df  -h (to display the mount points)
```

For checking:

```bash
#cd  /data1
#ls
f1 f2 f3 f4 f5
#mkdir  dir1
#ls  -l
```

NFS (only root user login no_root_squash option)

Server side Configuration:
```bash
#yum install -y nfs-utils
#mkdir  /nfs2
#touch /nfs2/f{1..5}
#vim  /etc/exports
/nfs2	192.168.238.132(rw,sync,no_root_squash)
:wq!
#exportfs -rv
#systemctl enable  nfs-server.service
#systemctl  restart  nfs-server.service
#firewall-cmd  --permanent  --add-service=nfs
#firewall-cmd  --reload
```

Client Side Configuration:
```bash
#yum install -y nfs-utils
#mkdir  /data2
#vim  /etc/fstab
192.168.238.129:/nfs2	/data2	nfs	defaults	0	0
(other machines IP or Hostname)
:wq!
#mount  -a
#df  -h (to display the mount points)
```

For checking:

```bash
#cd  /data2
#ls
f1 f2 f3 f4 f5
#mkdir  dir1
#ls
```


SAMBA SERVICE
1.It is used to upload and download the data from one system to another suystem in heterogeneous environment
2.Samba Clients may be Windows (or) Linux
3.It is used based authentication
4.Only valid SAMBA Users can be login
5.We can upload & download both files and directories
6.The package responsible for samba service is  SAMBA and common permissions is Samba-Common
7.The client package is SAMBA-CLIENT
8.The configuration file for samba service is  /etc/samba/smb.conf
9.The port number for samba service is 135
10.The daemon responsible for this service is "smb"(service messsage block)
11.The SELinux Context of samba service is  "samba_share_t"


Note:
We are sharing our data in the configuration file through the network we need to download to your machines
Those we are calling as  "share definition".

SAMBA server side Configurartion:
1.Installation
2.Create directory and create some files for practise
3.Change SELinux Context for the files
4.Create users
5.Make those users into the samba users
6.set 'acl'   (if  'w' permission is required)
7.Samba Configuration
8.Enable & restart the service
9.Firewall

```bash
#yum install -y samba samba-common samba-client
#mkdir /data  /data1
#touch /data/f{1..5}   /data1/f{1..5}
#chcon -Rt  samba_share_t  /data   /data1
R  ---> recursive
#useradd  redhat
#smbpasswd  -a  redhat  a---> add
New SMB password:
Re-type New SMB password:
#smbpasswd  -e  redhat
e ---> enable the user
#setfacl  -m  u:redhat:rwx   /data1
#pdbedit   -L (to display the  samba users )
#vim   /etc/samba/smb.conf
Here we can configuration inthis file  any where
[samba]
comment = read only permission
path = /data
hosts allow = 192.168.238.132/24
browseable  = yes
valid users  = redhat
```

[samba1]
comment  =  read and write permission
path = /data1
hosts allow  =192.168.238.132/24
browseable = yes
valid users = redhat
:wq!

```bash
#testparm (check the share definition in the configuration file)
#systemctl enable  smb
#systemctl restart smb
#firewall-cmd  --permanent   --add-service=samba
#firewall-cmd  --reload
```

Client  side Configuration:
1.Installation
2.service enable & restart
3.login into the samba server using   samba user

1st method:

```bash
#yum install -y samba samba-common samba-client
#systemctl enable  smb
#systemctl restart smb
```

For checking the samba share in the network:
```bash
#smbclient  -L  192.168.238.129(samba server IP)
It  will login with  samba  root user, we need to give
Enter's root password:   (enter)
```

If you want to get the data we need to login with samba user & samba password

Syntax:
```bash
#smbclient  //(samba server IP)/(share name)  -U  <samba username>  -p
U  --> samba user
p --> password
```

Comamnd:
```bash
#smbclient   //192.168.238.132/samba   -U   redhat  -p
Enter redhat's password:
```

2nd method:

Next method is the mounting method using CIFS File system
This is the common file system both windows and Linux
If you want to use the CIFS f/s in linux machine, we need to install manually

```bash
#yum install -y cifs-utils
#mkdir  /samba /samba1
#vim  /root/cred
username=redhat
password=redhat
:wq!
#vim  /etc/fstab
//192.168.238.129/samba	/samba	cifs	defaults,username=redhat,password=redhat		0	0
(samba server IP/share name)
//192.168.238.129/samba1	/samba1	cifs	defaults,credentials=/root/cred,sec=ntlmssp	0	0
```

:wq!
```bash
#mount -a
For checking:
#cd /samba
#ls -Z
#mkdir d1
permission denied:read-only filesystem
```

```bash
#cd  /samba1
#mkdir d1
#ls
d1 f1 f2 f3 f4 f5
#ls -Z
```

Mariadb:
It is used to store the data in the form of the tables
It is a relational database
The mariadb port number is 3306
The backend service working in the RHEL machine is 'mysql' service

Database Installation:
```bash
#yum groupinstall  mariadb
(or)
#yum install -y mariadb*
#systemctl enable mariadb.service
#systemctl restart mariadb.service
```

Command to login the mariaDB monitor
```bash
#mysql -u  <username> -p
u--> username
p-->password
By default, we are having the 'root' user to login but we don't need any password to login
into the database monitor
```

Database Secure Installation:
```bash
#mysql_secure_installation
```

Enter the current root password(enter for none):
Set password [y/n]?y
New password: (apple)
Re-type  New password: (apple)
1.Remove anonymous users?y
2.Disallow root login remotely?y
3.Remove test database and access to it? [Y/n] y
- Dropping test database...
... Success!
- Removing privileges on test database...
... Success!
4.Reload privilege tables now? [Y/n] y
... Success!

Cleaning up...

All done!  If you've completed all of the above steps, your MariaDB
installation should now be secure.

Thanks for using MariaDB!

Login to the Database monitor:
```bash
#mysql -u root -p
password:
mariaDB[(none)]>
```

1.Command to display the databases
mariaDB[(none)]>show databases;

2.Command to login into the database
mariaDB[(none)]>use  <database name>;
mariaDB[(none)]> use   mysql;

3.Command to display the tables inside the database
mariaDB[mysql]> show tables;

4.Command to display the table information
mariaDB[mysql]> describe   <tablename>;
mariaDB[mysql]> describe   time_zone;


5.Command to create the database
mariaDB[mysql]>  create  database <database name>
mariaDB[mysql]>  create database  project

6.Command to create the table
mariaDB[project]> create  table  <tablename> (colum1  datatype, column2 datatype column3 datatype);
mariaDB[project]> create table  staff (  names varchar(20), ph_no int(15), address varchar(30));

7.Command to insert the data in the table
insert into  <tablename>  values  ( 'char', int,'varchar');
insert into staff  values ('Ramanuja', 1241413,'plotno:14,madhapur,hyd');

8.Command to display the data in the table
mariaDB[project]>select * from <table name>;
mariaDB[project]>select * from staff;
mariaDB[project]>  select  <column name >  from <table name>;
mariaDB[project]> select  ph_no  from  staff;

9.Command to update the table
mariaDB[project]>update <table name> SET <Column name>=<valuee> where <column name>=<matched entry>
mariaDB[project]> update staff  SET ph_no=1343245 where name='Ramanuja';

10.Command to alter the table
mariaDB[project]>alter table <table name> add <column name>  <data type>;
mariaDB[project]>alter table staff add id varchar(20);

11.Command to delete the entry from table
mariaDB[project]>delete from <table name> where <coulmn name>=<value>;
mariaDB[project]>delete from staff where id=3;

12.Command to delete the table
mariaDB[project]>drop table <tablename>;
mariaDB[project]>drop table staff;

13.Command to create the database users
create user <username>@(localhost (or) ip) identified by <"password in quotes">;
create user 'apple'@'localhost'  identified by "apple@123";

1.apple@localhost --> user apple can access only from the localhost
2.apple@192.168.238.132  --> user apple can connect from 192.168.238.132 host
3.apple@'192.168.238.%'  --> User apple can connect from any host that belongs to the network 192.168.238.0
4.apple@'%' -->User apple can connect from any host
5.apple@'2000::ef' --> User apple can connect from that host

14.Command to give permissions to the User on database
GRANT ALL on <database name> to  <username>@(localhost (or) ip);
GRANT ALL on project to 'apple'@'localhost';

1. grant SELECT on database.table to username@hostname  --> grant select privilige for a specific table on the specific database to o specific user
2.grant SELECT on database.* to username@hostname --> grant select pricvilige to all tables in the specific database to a specific user
3.grant SELECT,INSERT on *.* to username@hostname -->grant select and insert priviliges to all tables in all databases to a specific user
4.grant all on *.*  to username@hostname  --> grant all priviliges to all tables in all databases to a specific user

15.Command to update the priviliges immediately
FLUSH priviliges;

16.Command to remove the priviliges for the user
revoke select,insert on <databasename>.* from username@hostname;
revoke  all on project.*  from 'apple'@'localhost'

```bash
#systemctl restart mariadb.service
#systemctl enable mariadb.service
#firewall-cmd --permanent --add-service=mysql
#firewall-cmd --reload
```

ISCSI (internet small computer system interface)
It is used to transfer the storage from the SAN or NAS box to the Clinet OS
It is a protocol used for emulating the SCSI high performance local storage bus over IP networks ,providing data transfer and management
to remote block storage devices.
The port number for ISCSI protocol is 3260.
As a Storage Area Network(SAN) protocol, ISCSI extends SAN's across local and wide are networks(LAN's,WAN's and internet).
The SCSI protocol suite provides the COMMAND DESCRIPTOR BLOCK(CDB) command set over a device bus communication protocol.
ISCSI servers emulate the SCSI devices usinf files,logical volumes or disks of any type as the underlying storage(backstore) presented as targets.

ISCSI Component Terminology:
1.Target:
An ISCSI storage resource, configured for connection from an ISCSI server.
Targets must be unique name
ISCSI server calling as 'Targets'

2.Initiator:
ISCSI clients calling as 'Initiator'
An ISCSI client, typically acailable as software but also ISCSI HBA's.
Initiators must be given by unique name (IQN)

3.IQN:
IQN stands for ISCSI Qualified Name
An IQN is a WORLD-WIDE unique name used to identify both Initiators and Targets.
The IQN format is:
iqn.YYYY-MM.com.reversed.domain:[optional string]
YYYY-mm -->the forst month in which the domain was owned
com.reveresed.domain  --> The reverse doamin name of the organization creating ISCSI name

4.ACL(access control list)
An ACL , an  access restriction using the node IQN to validate access permissions fro an initiator

5.LUN (Logical Unit Number)
It is a numbered block device attachedto and available through a target
One or more LUN to be attached to a single target

6.TPG(target portal group)
It is the set of interface IP addresses and TCP ports to which a specific ISCSI target will listen


ISCSI target Configuration:
```bash
#fdisk  /dev/sdb
Create a LVM partition of size 10G
#yum install -y targetcli.noarch
#systemctl enable target.service
#systemctl restart target.service
#targetcli(it is cli tool)
/>help(to list help commands)
/>ls
backstores
block
fileio
pscsi
ramdisk
iscsi
loopback
/> cd /backstores/block
(backstores/block> create block  <blockname>  <partitioname eitherLVM or normal>)
backstores/block> create  block redhat  /dev/myvg/mylv
backstores/block>cd /iscsi
/iscsi>create target iqn.2017-08.com.example:server
created target iqn.2017-08.com.example:server
/iscsi/cd iqn.2017-8.com.example:server/tpg1/acl
/iscsi/iqn.2017-8.com.example:server/tpg1/acl> create iqn.2017-08.com.example:client
created ACL
/iscsi/iqn.2017-8.com.example:server/tpg1/acl>cd ../lun
/iscsi/iqn.2017-8.com.example:server/tpg1/lun> create /backstores/block/redhat
created LUN 0
/iscsi/iqn.2017-8.com.example:server/tpg1/lun>cd ../portal
/iscsi/iqn.2017-8.com.example:server/tpg1/portal> create 172.25.0.10
create protal 172.25.0.10:3260
/iscsi/iqn.2017-8.com.example:server/tpg1/aportal> cd
/saveconfig(configurations will save)
/quit
#systemctl restart target.service
#firewall-cmd --permanent --add-port=3260/tcp
#firewall-cmd --reload
```


ISCSI Initiator configuration:
```bash
#yum install -y iscsi-initiator-utils.i686
#vim /etc/iscsi/initiatorname.iscsi
Initiator Name=iqn.2017-08.com.example:client
:wq!
#man iscsiadm
#iscsiadm --mode discoverydb --type sendtargets --portal 192.168.1.132 --discover
#systemctl enable iscsid
#systemctl restart iscsid
#iscsiadm --mode node --targetname iqn.2001-05.com.doe:test --portal 192.168.1.132:3260 --login
#fdisk -l
before shutdown your machine we have to logout from the othermachine
#iscsiadm --mode node --targetname iqn.2001-05.com.doe:test --portal 192.168.1.1:3260 --logout
```