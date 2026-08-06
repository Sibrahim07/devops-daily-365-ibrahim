#!/bin/bash

REPORT_DIR="reports"
REPORT_FILE="$REPORT_DIR/health-report.txt"

mkdir -p "$REPORT_DIR"

echo "=========================================" > "$REPORT_FILE"
echo " Linux System Health Report" >> "$REPORT_FILE"
echo "=========================================" >> "$REPORT_FILE"
echo "Generated On : $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Hostname : $(hostname)" >> "$REPORT_FILE"
echo "Current User : $(whoami)" >> "$REPORT_FILE"
echo "Kernel Version : $(uname -r)" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== CPU ==========" >> "$REPORT_FILE"
top -bn1 | grep "Cpu(s)" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== MEMORY ==========" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== DISK ==========" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== UPTIME ==========" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== TOP 5 CPU PROCESSES ==========" >> "$REPORT_FILE"
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -6 >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "========== RUNNING SERVICES ==========" >> "$REPORT_FILE"

for service in ssh cron docker
do
    if systemctl is-active --quiet "$service"
    then
        echo "$service : Running" >> "$REPORT_FILE"
    else
        echo "$service : Not Running" >> "$REPORT_FILE"
    fi
done

echo "" >> "$REPORT_FILE"
echo "========== LAST 10 SYSTEM LOGS ==========" >> "$REPORT_FILE"

if [ -f /var/log/syslog ]; then
    tail -10 /var/log/syslog >> "$REPORT_FILE"
else
    echo "/var/log/syslog not found on this system." >> "$REPORT_FILE"
fi

echo ""
echo "========================================="
echo " Health Check Completed Successfully"
echo " Report saved at:"
echo " $REPORT_FILE"
echo "========================================="