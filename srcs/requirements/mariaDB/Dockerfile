FROM debian:buster

# Install and update packages
RUN apt-get update -y &&\
	apt-get install -y &&\
	apt-get upgrade -y &&\
	apt install -y mariadb-server &&\
	apt-get clean &&\
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Copy the configuration file
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY ./tools/setup.sql /

# Run the setup script
RUN service mysql start &&\
	mysql < setup.sql &&\
	rm -rf setup.sql

# expose port 3306 for the database
EXPOSE 3306

CMD ["mysqld_safe"]
