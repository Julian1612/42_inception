# Use Debian as the base image
FROM debian:buster

# Update the package repositories and install necessary software
RUN apt-get update && apt-get install -y nginx php-fpm php-mysql

# Copy your Nginx configuration file
COPY config/default.conf /etc/nginx/sites-available/default

# Check if the symbolic link already exists before creating it
RUN if [ ! -f /etc/nginx/sites-enabled/default ]; then ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/; fi

# Start Nginx and PHP-FPM
CMD ["/bin/bash", "-c", "service php7.3-fpm start && service nginx start && tail -f /dev/null"]

# Expose the ports
EXPOSE 80
