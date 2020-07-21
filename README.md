# How to run Gitlab CE with docker-compose for Raspberry Pi?
 
1. You need to copy docker-compose.override:

cp docker-compose.override.example to docker-compose.override.yml

2. Open docker-compose.override.yml and set your own variables such as external_url, ssh external port and others

3. Don't forget to install docker and docker-compose, I tested repo with docker version 19, and docker-compose 1.25

4. Execute command in root repo folder:
docker-compose up -d

5. You need to wait 15m and you can try to open https://YOUR_GITLAB/
222 is port for gitlab ssh.

## NOTE

There are some scripts for backup and restore, update-permissions and reconfiguration. Don't forget to backup your data!
upd-permissions.sh and reconf.sh are useful helpers when you have a problems with backup restoring.