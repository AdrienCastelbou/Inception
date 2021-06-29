mysql_install_db

cat << EOF > db.sql
ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS 'norminet'@'%' IDENTIFIED BY 'norminet_pass';
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_USER'@'%';
USE $MYSQL_DATABASE;
CREATE TABLE IF NOT EXISTS $MYSQL_DATABASE.members(
		member_id int auto_increment,
		name varchar(255) not null,
		primary key(member_id)
	);
DELETE FROM mysql.user WHERE user='';
FLUSH PRIVILEGES;
EOF
exec mysqld_safe --datadir='/var/lib/mysql' --init-file=/db.sql
