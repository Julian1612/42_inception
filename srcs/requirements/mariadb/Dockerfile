FROM debian:buster

RUN apt-get update -y &&\
    apt-get install -y\
        mariadb-server\
    && apt-get clean\
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY ./tools/setup.sql /

RUN service mysql start &&\
    mysql < setup.sql &&\
    rm -rf setup.sql

EXPOSE 3306

CMD ["mysqld_safe"]
