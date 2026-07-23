# Day 19 – Shell Scripting Project

## Scripts Created

- log_rotate.sh
- backup.sh
- maintenance.sh

## Commands Used

- find
- gzip
- tar
- date
- crontab
- mkdir
- ls
- echo

## Sample Cron Entries

Daily Log Rotation

0 2 * * * /home/ubuntu/Day-19/log_rotate.sh

Weekly Backup

0 3 * * 0 /home/ubuntu/Day-19/backup.sh

Health Check

*/5 * * * * /home/ubuntu/health_check.sh

## What I Learned

- Automated log rotation helps prevent disks from filling up.
- Backup scripts protect important data and enable recovery after failures.
- Cron automates repetitive tasks, reducing manual work and improving reliability.

## Why It Matters in Production

- Prevents outages caused by full disks.
- Ensures regular backups without manual intervention.
- Enables scheduled maintenance and monitoring across multiple servers.
