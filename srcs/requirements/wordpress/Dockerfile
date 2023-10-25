FROM alpine:3.17

RUN apk update && apk upgrade && apk add wget php php-phar php-json php-curl php-fpm php-mysqli php-iconv mariadb-client


RUN	adduser -S nginx && addgroup -S nginx
COPY conf/www.conf /etc/php81/php-fpm.d/www.conf

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN cp wp-cli.phar /usr/bin/wp

WORKDIR /var/www/html

COPY tools/create_wordpress.sh /tmp/create_wordpress.sh
ENTRYPOINT [ "sh", "/tmp/create_wordpress.sh" ]