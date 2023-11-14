FROM debian:buster

RUN apt-get update -y \
    && apt-get install -y \
        curl \
        php7.3 \
        php7.3-fpm \
        php7.3-mysql \
        mariadb-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/www/wordpress
WORKDIR /var/www/wordpress

# Copy your configuration files
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
# COPY ./conf/wp-config.php .
COPY ./conf/wp-config.php .

# Copy the setup script
COPY ./tools/setup.sh ./setup.sh
RUN chmod +x setup.sh

# Copy wp-cli to /usr/local/bin
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

ENTRYPOINT ["./setup.sh"]
