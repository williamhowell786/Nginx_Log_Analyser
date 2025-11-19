#!/usr/bin/env bash
echo "TOP 5 IP ADDRESSES WITH THE MOST REQUESTS:"
awk '{print $1}' $1 | sort | uniq -ci | sort -nr | head -n 5
echo "TOP 5 MOST REQUESTED PATHS:"
awk '{print $7}' $1 | sort | uniq -ci | sort -nr | head -n 5
echo "TOP 5 RESPONSE STATUS CODES:"
awk '{print $9}' $1 | grep -v "-" | sort | uniq -ci | sort -nr | head -n 5
echo "TOP 5 USER AGENTS:"
awk '{$1=$2=$3=$4=$5=$6=$7=$8=$9=$10=$11=""; $0=$0} NF=NF' $1 | sort | uniq -ci | sort -nr | head -5
