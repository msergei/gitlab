#!/bin/bash

# If you backup file is 1595266904_2020_07_20_12.10.0_gitlab_backup.tar
# You need to exec: BACKUP=1595266904_2020_07_20_12.10.0
# So: bash restore.sh 1595266904_2020_07_20_12.10.0

docker-compose exec srv gitlab-backup restore BACKUP=$1
