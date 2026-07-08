
# Day 05 – Linux Troubleshooting Runbook

## Target Service

**Service:** Nginx

---

# Environment Information

## 1. Kernel Information

```bash
uname -a
```

**Observation:**
Ubuntu 26.04 LTS running on AWS EC2 with Linux Kernel 7.0.0.

---

## 2. Operating System

```bash
lsb_release -a
```

**Observation:**
Ubuntu 26.04 LTS (Codename: resolute)

---

# Filesystem Sanity Check

## Created Temporary Directory

```bash
mkdir /tmp/runbook-demo
```

**Observation:**
Directory already existed.

---

## Backup Configuration File

```bash
cp /etc/hosts /tmp/runbook-demo/hosts-copy
```

Verified using:

```bash
ls -l /tmp/runbook-demo
```

**Observation:**
Backup file was successfully created.

---

# CPU & Memory Snapshot

## Checked Nginx Process

```bash
ps -o pid,pcpu,pmem,comm -p $(pgrep nginx | head -1)
```

**Observation:**
Nginx process is running.
CPU usage is very low.
Memory usage is normal.

---

## Memory Status

```bash
free -h
```

**Observation:**
Around 908 MiB RAM available.
Memory usage is healthy.
No swap is configured.

---

# Disk & Storage

## Filesystem Usage

```bash
df -h
```

**Observation:**
Root filesystem is only 17% utilized.
Enough free disk space is available.

---

## Log Directory Size

```bash
sudo du -sh /var/log
```

**Observation:**
Log directory size is around 40 MB.
No abnormal disk usage.

---

# Network Check

## Listening Ports

```bash
ss -tulpn
```

**Observation:**
Nginx is listening on port 80.
SSH is listening on port 22.

---

## Service Health Check

```bash
curl -I http://localhost
```

**Observation:**
Received HTTP/1.1 200 OK.
Nginx is serving requests successfully.

---

## System Logs

- CPU usage is normal.
- Disk usage is only 17%.

---

# If This Worsens

1. Restart the Nginx service.
2. Check the full journal logs for detailed errors.

---

# Commands Practiced

- uname -a
- lsb_release -a
- mkdir
- cp
- ls -l
- ps
- free -h
- df -h
- du -sh
- ss -tulpn
- curl -I
- journalctl
- tail

---

**Day 05 Completed ✅**3. Verify disk, memory, and CPU usage before escalating the issue.
- No critical log errors detected.
- Network ports are listening correctly.
- Memory usage is healthy.
- Nginx service is healthy.

# Quick Findings
---
tail -n 5 /var/log/syslog
```

No critical errors found.

System services are running normally.
**Observation:**

```bash
# Log Review

---

## Nginx Logs
```

No recent errors found.

Nginx service started and stopped successfully during previous sessions.
**Observation:**

```bash
