FROM debian:buster
RUN apt update -y && apt install mariadb-server -y
COPY tools/script.sh /.
RUN chmod 755 /script.sh
RUN rm /etc/mysql/my.cnf && echo "[mysqld]\ngeneral_log=1\nuser=root\nport=3306\nbind_address=0.0.0.0\nskip-networking=false\nmax_allowed_packet=500M" > /etc/mysql/my.cnf
ENTRYPOINT /script.sh
