FROM debian:buster
RUN apt update -y && apt install mariadb-server -y
COPY script.sh /.
RUN chmod 755 /script.sh
ENTRYPOINT /script.sh
