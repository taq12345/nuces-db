FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=shooting

ENV MYSQL_DATABASE=test

ADD ./script.sql /docker-entrypoint-initdb.d
