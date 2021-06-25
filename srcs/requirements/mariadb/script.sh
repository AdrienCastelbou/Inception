mysql_install_db

cat << EOF > db.sql
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
USE $MYSQL_DATABASE;
CREATE TABLE IF NOT EXISTS $MYSQL_DATABASE.members(
		member_id int auto_increment,
		name varchar(255) not null,
		primary key(member_id)
	);
EOF
mysqld_safe --datadir='/var/lib/mysql' --init-file=/db.sql
