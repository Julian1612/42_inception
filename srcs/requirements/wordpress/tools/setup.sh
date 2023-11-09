#!/bin/bash

wp core download --path=/var/www/wordpress --allow-root
wp core install --url=$WP_URL \
				--title=$WP_TITLE \
				--admin_user=$WP_USER \
				--admin_password=$WP_PASSWORD \
				--admin_email=$WP_EMAIL \
				--path=/var/www/wordpress --allow-root

mkdir -p /var/run/php
php-fpm7.3 -F --fpm-config /etc/php/7.3/fpm/pool.d/www.conf
