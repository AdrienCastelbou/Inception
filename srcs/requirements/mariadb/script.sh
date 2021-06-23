mysql_install_db
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE"
mysql -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_USER';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$MYSQL_USER'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
mysql <<EOF
USE $MYSQL_DATABASE;
CREATE TABLE IF NOT EXISTS $MYSQL_DATABASE.members(
		member_id int auto_increment,
		name varchar(255) not null,
		primary key(member_id)
	);
	INSERT INTO members (name) VALUES ('Thomas (Neo)');
	INSERT INTO members (name) VALUES ('BIGGIE');
EOF
mysqld_safe --datadir='/var/lib/mysql'
