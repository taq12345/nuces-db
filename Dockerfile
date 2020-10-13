FROM mysql:5.7

RUN echo 'testing new build 233'

ADD ./script.sql /docker-entrypoint-initdb.d