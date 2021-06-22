mysql_install_db
service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
mysql -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$USER_NAME'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
mysql <<EOF
USE $DB_NAME;
CREATE TABLE IF NOT EXISTS $DB_NAME.members(
		member_id int auto_increment,
		name varchar(255) not null,
		primary key(member_id)
	);
	INSERT INTO members (name) VALUES ('Thomas (Neo)');
	INSERT INTO members (name) VALUES ('BIGGIE');
EOF
mysqld_safe --datadir='/var/lib/mysql'
