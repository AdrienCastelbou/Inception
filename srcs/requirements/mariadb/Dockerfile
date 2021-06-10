FROM debian
RUN apt update -y && apt install mariadb-server -y
RUN mkdir /mysql_scripts
COPY mySqlScript.sql /mysql_scripts/
RUN /etc/init.d/mysql start && mysql -uroot --password="" -e "source /mysql_scripts/mySqlScript.sql"
CMD mysqld
