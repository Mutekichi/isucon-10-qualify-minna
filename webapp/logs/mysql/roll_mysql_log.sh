#!/bin/sh

mv ./mysql-slow.log ./mysql-slow.log.$(date "+%Y%m%d%H%M%S")

mysql -u root -proot -e "FLUSH LOGS;"