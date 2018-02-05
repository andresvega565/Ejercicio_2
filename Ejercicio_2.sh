#/bin/bash

docker network create Ejercicio2

docker create  --name datacontainer2 -v /var/lib/mysql -v /var/www/html busybox

docker run --network Ejercicio2 --name=mariadb -p 3308:3308 -d -e MYSQL_ROOT_PASSWORD=mariadb -e MYSQL_DATABASE=db -e MYSQL_USER1=andres -e MYSQL_PASSWORD1=andres --volumes-from datacontainer2 orboan/dcsss-mariadb

docker run --network Ejercicio2 --name=apache1 -p 8282:80 -p 2222:22 -d --volumes-from datacontainer2 andresvega565/centos-httpd-php

