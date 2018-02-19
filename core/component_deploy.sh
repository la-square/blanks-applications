#!/usr/bin/env bash

host=$1
db_name=$2
db_user=$3
db_pass=$4

sed -i -e "s/ALLOWED_HOSTS = []/ALLOWED_HOSTS = ['$host','www.$host']/g" ./settings.py >> /dev/null

sed -i -e "s/DB_NAME/$db_name/g" ./settings.py >> /dev/null
sed -i -e "s/USER_NAME/$db_user/g" ./settings.py >> /dev/null
sed -i -e "s/DB_PASSWORD/$db_pass/g" ./settings.py >> /dev/null

rm -rf ./component_deploy.sh