FROM alpine:3.17

RUN apk update && apk upgrade && apk add nginx && apk add openssl

RUN mkdir -p /var/www/html && mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=GE/L=Mulhouse/O=42/OU=42/CN=gsaile.42.fr/UID=gsaile"

COPY ./index.html /var/www/html/index.html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
