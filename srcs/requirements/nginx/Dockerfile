FROM debian:buster

RUN apt-get update -y &&\
	apt-get install -y &&\
	apt install -y nginx &&\
	apt install -y openssl &&\
	apt-get clean &&\
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./conf/nginx.conf /etc/nginx/sites-available/default

RUN openssl req -newkey rsa:4096 \
	-x509 \
	-sha256 \
	-days 365 \
	-nodes \
	-out /etc/ssl/certs/localhost.crt \
	-keyout /etc/ssl/private/localhost.key \
	-subj "/CN=jschneid.42.fr"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
