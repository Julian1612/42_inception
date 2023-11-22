#!/bin/bash

cd /var/www/wordpress
wp core download --allow-root
wp core config	\
				--dbname=$DB_NAME \
				--dbuser=$DB_USER \
				--dbpass=$DB_PASSWORD \
				--dbhost=$DB_HOST \
				--allow-root
wp core install \
				--admin_user=$WP_ADMIN_NAME \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_MAIL \
				--title=$WP_TITLE \
				--url=$WP_URL \
				--allow-root
wp user create \
				$WP_USER \
				$WP_USER_MAIL \
				--role=author \
				--user_pass=$WP_USER_PASSWORD \
				--allow-root

cd -
php-fpm7.3 -F
