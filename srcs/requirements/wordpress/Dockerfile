FROM debian:buster

RUN apt-get update -y &&\
    apt-get install -y\
        curl \
        php7.3 \
        php7.3-fpm \
        php7.3-mysql \
        mariadb-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /etc/php/7.3/fpm
COPY conf/www.conf /etc/php/7.3/fpm/pool.d

RUN mkdir /run/php

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar --output /usr/bin/wp --silent
RUN chmod +x ./usr/bin/wp

COPY ./tools/setup.sh /var/www/wordpress/setup.sh
RUN chmod +x /var/www/wordpress/setup.sh

ENTRYPOINT ["/var/www/wordpress/setup.sh"]
