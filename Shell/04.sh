#!/bin/bash 
printf "The   Systen information is  in this sequence:%s\n"
printf "Hostname: %s\n" "$(hostname)"
printf "OS : %s \n " "$(uname -s)" 
printf "Kernal version : %s\n" "$(uname -r)"
printf "Uptime : %s\n " "$(uptime -p)"
printf "Linux distribution : %s \n"  "$(lsb_release -a)"
printf "Operating system identification data: %s \n" "$(cat /etc/os-release)"
printf "Hardware-releated information (BIOS,memory,processor) : %s\n" "$(sudo dmidecode)"
printf "Traced data of the eBPF  of the kernal diagnostic : %s \n " "$(bpftrace -v)"
printf "Outputs details of the  hardware components : %s \n"  "$(hwinfo)"
printf "System performance statics, including process,memeory,swap, I/O and CPU usage  %s \n" "$(vmstat  1 10)"
# printf "Realt time monitoring of the  CPU memory  disk  and the other performance metrics are  %s \n " "$(nmon)"

