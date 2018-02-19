#!/usr/bin/env bash

project=$1
host=$2
db_name=$3
db_user=$4
db_pass=$5

sed -i -e "s/allow_pattern/'$host','www.$host'/g" /home/hotdog/$project/djapp/settings.py >> /dev/null

sed -i -e "s/DB_NAME/$db_name/g" /home/hotdog/$project/djapp/settings.py >> /dev/null
sed -i -e "s/USER_NAME/$db_user/g" /home/hotdog/$project/djapp/settings.py >> /dev/null
sed -i -e "s/DB_PASSWORD/$db_pass/g" /home/hotdog/$project/djapp/settings.py >> /dev/null

rm -rf /home/hotdog/$project/djapp/application_engine/component_deploy.sh