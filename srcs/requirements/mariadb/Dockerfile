FROM alpine:3.17

RUN apk update && apk upgrade && apk add mariadb

COPY tools/setup.sh /setup.sh

CMD ["sh", "/setup.sh"]
