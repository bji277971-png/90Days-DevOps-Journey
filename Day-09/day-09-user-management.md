
# Day 09 – Linux User & Group Management

## Objective

Today I practiced Linux user and group management. I learned how to create users, create groups, assign users to groups, manage shared directories, and control file permissions.

---

## Users & Groups Created

### Users
- tokyo
- berlin
- professor
- nairobi

### Groups
- developers
- admins
- project-team

---

## Group Assignments

- tokyo → developers, project-team
- berlin → developers, admins
- professor → admins
- nairobi → project-team

---

## Directories Created

| Directory | Group Owner | Permissions |
|-----------|-------------|-------------|
| /opt/dev-project | developers | 775 |
| /opt/team-workspace | project-team | 775 |

---

## Commands Used

```bash
sudo useradd -m username
sudo passwd username
sudo groupadd groupname
sudo usermod -aG groupname username
groups username
cat /etc/passwd
cat /etc/group
mkdir /opt/dev-project
chgrp developers /opt/dev-project
chmod 775 /opt/dev-project
ls -ld /opt/dev-project
sudo -u username touch filename
```

---

## What I Learned

- Learned how Linux creates and manages user accounts.
- Understood the difference between users and groups.
- Learned how to assign users to multiple groups.
- Practiced creating shared directories for team collaboration.
- Understood Linux permission model using `chmod` and `chgrp`.
- Learned how to verify users, groups, and permissions.

---

## Challenges Faced

- Faced permission issues while deleting a protected directory.
- Learned when to use `sudo` for administrative tasks.
- Verified group memberships and directory permissions to solve access problems.

---

## Real-World DevOps Use

User and group management is an essential Linux administration skill. In production environments, DevOps engineers create users for developers, assign appropriate group permissions, and secure shared directories so teams can collaborate without giving unnecessary root access.

---

## Conclusion

Day 09 helped me understand how Linux manages users, groups, permissions, and shared workspaces. These are fundamental skills required for system administration and DevOps engineering.






<img width="955" height="918" alt="Image" src="https://github.com/user-attachments/assets/efb605b6-27dd-442e-a6e1-85de95c14585" />

<img width="592" height="140" alt="Image" src="https://github.com/user-attachments/assets/d4ada8e2-641f-41aa-b348-d9efee2676dd" />

<img width="717" height="216" alt="Image" src="https://github.com/user-attachments/assets/02efbb2e-5378-4b1b-bc3b-b38531e4c260" />

<img width="1060" height="149" alt="Image" src="https://github.com/user-attachments/assets/28e387f0-e5c2-48c8-8116-35ead3eef231" />

<img width="1148" height="215" alt="Image" src="https://github.com/user-attachments/assets/747441ac-5b46-466c-945b-122fbd6faad6" />
