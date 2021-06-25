mysql_install_db
mysqld &
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
mysql <<EOF
USE $MYSQL_DATABASE;
CREATE TABLE IF NOT EXISTS $MYSQL_DATABASE.members(
		member_id int auto_increment,
		name varchar(255) not null,
		primary key(member_id)
	);
EOF
pkill mysqld
mysqld_safe --datadir='/var/lib/mysql'
