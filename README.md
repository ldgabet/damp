# docker-web-skeleton
Docker skeleton apache/php-fpm/mysql for existing or new web project

## Introduction

The docker web skeleton is a replacement of wamp/lamp/xamp based on multiple docker containers for your new or existing web projects.
The skeleton provides 3 docker containers with Apache, PHP-FPM and MySQL.

docker-web-skeleton gives you everything you need for developing web application.
This complete stack run with docker and docker-compose.

## Usage

Clone this repository, adapt the file **.env** according to your needs and start the script **build.sh** located in docker folder.
Voila, your project is ready.

```shell
$ /bin/bash docker/build.sh
```

You can access the demo page via your browser at **http://localhost:9000** to check if everything is working fine.
I also include adminer.php to access mysql database at **http://localhost:9000/adminer.php**

- If you have an existing database to import, you can copy your SQL file(s) in **docker/mysql/dump/** folder.
(this will only work at the first run)
- You need to place the files of your website or web application in **www** folder.

When you finish to work, you can use the script **destroy.sh** to stop and delete the docker containers.
All the files located in **www**, **logs** and **database** will remain.

```shell
$ /bin/bash docker/destroy.sh
```

## Thanks

The source comes from [http://www.inanzzz.com](http://www.inanzzz.com/index.php/post/su76/creating-apache-mysql-and-php-fpm-containers-for-a-web-application-with-docker-compose)