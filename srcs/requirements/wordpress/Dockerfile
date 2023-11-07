FROM debian:buster

RUN apt-get update -y &&\
	apt-get install -y &&\
	apt-get upgrade -y &&\
	apt install -y php7.3 &&\
	apt-get install -y mariadb-client &&\
	apt-get install -y php7.3-fpm &&\
	apt-get install -y curl &&\
	apt-get clean &&\
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/www/worpress
WORKDIR /var/www/worpress

RUN	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/wp-conf.php /var/www/wordpress

COPY ./tools/setup.sh ./

RUN chmod +x setup.sh

EXPOSE 9000

ENTRYPOINT ["./setup.sh"]
