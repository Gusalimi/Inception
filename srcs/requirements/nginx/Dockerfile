FROM alpine:3.17

RUN apk update && apk upgrade && apk add nginx openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=GE/L=Mulhouse/O=42/OU=42/CN=gsaile.42.fr/UID=gsaile"

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]
