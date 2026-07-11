# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

## Objective

Deploy a web server on an AWS EC2 instance, verify that it is accessible over the internet, and collect Nginx logs for troubleshooting.

---

## Commands Used

```bash
sudo apt update
docker --version
nginx -v
sudo systemctl status nginx
sudo systemctl enable nginx
sudo cat /var/log/nginx/access.log
sudo cat /var/log/nginx/error.log
sudo cp /var/log/nginx/access.log ~/nginx-logs.txt
sudo chown ubuntu:ubuntu ~/nginx-logs.txt
cat ~/nginx-logs.txt
```

---

## Challenges Faced

- Copied the Nginx access log with the wrong filename (`nginx-log.txt` instead of `nginx-logs.txt`).
- Fixed the filename and changed the file ownership using `chown`.
- Learned the difference between `access.log` and `error.log`.

---

## What I Learned

- How to verify that the Nginx service is running.
- How to check whether a website is accessible from the browser.
- How to read Nginx access and error logs.
- How to copy log files from system directories.
- How to change file ownership using `chown`.
- Understood that internet bots automatically scan public servers for common files like `.env`.

---

## Files Created

- day-08-cloud-deployment.md
- nginx-logs.txt

---

## Screenshots

- SSH connection
- Nginx Welcome Page
- Docker and Nginx verification

---

## Why This Matters for DevOps

Cloud servers are used to host applications in production. A DevOps engineer must know how to connect to a server, manage services, verify deployments, analyze logs, and troubleshoot issues quickly. These are essential skills for maintaining reliable and secure applications.
