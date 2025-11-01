#!/usr/bin/env bash
# measure_resources.sh
# Small system resource snapshot script
# Usage: bash script/measure_resources.sh

set -u

timestamp() { date --iso-8601=seconds; }

print_header(){
  echo
  echo "================================================================="
  echo " Resource snapshot: $(timestamp)"
  echo "================================================================="
}

print_uptime(){
  echo
  echo "-- UPTIME / LOAD --"
  uptime
  if [ -r /proc/loadavg ]; then
    echo "loadavg: " $(cut -d' ' -f1-3 /proc/loadavg)
  fi
}

print_cpu(){
  echo
  echo "-- CPU & TOP PROCESSES (by CPU) --"
  # ps provides a snapshot of CPU% and MEM%
  ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 11
}

print_mem(){
  echo
  echo "-- MEMORY --"
  if command -v free >/dev/null 2>&1; then
    free -h
  else
    awk '/MemTotal|MemFree|MemAvailable/ {print}' /proc/meminfo
  fi
}

print_disk(){
  echo
  echo "-- DISK USAGE --"
  df -h --total -x tmpfs -x devtmpfs || df -h
  echo
  echo "-- BLOCK DEVICES --"
  lsblk -o NAME,SIZE,TYPE,MOUNTPOINT || true
}

print_network(){
  echo
  echo "-- NETWORK INTERFACES --"
  # show brief interface stats
  if command -v ip >/dev/null 2>&1; then
    ip -brief address
    echo
    ip -s link show | sed -n '1,20p'
  else
    cat /proc/net/dev | sed -n '1,20p'
  fi
}

print_summary(){
  echo
  echo "-- SUMMARY --"
  echo "Hostname: $(hostname -f 2>/dev/null || hostname)"
  echo "Kernel: $(uname -sr)"
  echo "CPU count: $(nproc 2>/dev/null || echo unknown)"
}

main(){
  print_header
  print_summary
  print_uptime
  print_cpu
  print_mem
  print_disk
  print_network
  echo
  echo "Snapshot complete"
}

main "$@"
