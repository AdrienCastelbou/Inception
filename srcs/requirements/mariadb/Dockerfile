FROM debian:buster
RUN apt update -y && apt install mariadb-server -y
COPY script.sh /.
COPY tools/db.sql /.
RUN chmod 755 /script.sh /db.sql
RUN rm /etc/mysql/my.cnf && echo "[mysqld]\ngeneral_log=1\nuser=root\nport=3306\nbind_address=0.0.0.0\nskip-networking=false" > /etc/mysql/my.cnf
ENTRYPOINT /script.sh
