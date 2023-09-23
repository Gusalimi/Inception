FROM debian:buster

RUN apt update && apt upgrade && apt install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

WORKDIR /

COPY conf/setup.sh ./setup.sh

RUN chmod +x ./setup.sh

ENTRYPOINT ./setup.sh

