FROM mysql:5.7

RUN echo 'testing new build 23'

ADD ./script.sql /docker-entrypoint-initdb.d