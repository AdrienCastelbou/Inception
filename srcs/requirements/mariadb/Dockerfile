FROM debian:buster
RUN apt update -y && apt install mariadb-server -y
COPY script.sh /.
COPY tools/db.sql /.
RUN chmod 755 /script.sh /db.sql
ENTRYPOINT /script.sh
