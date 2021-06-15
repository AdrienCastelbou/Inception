service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
mysql -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$USER_NAME'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
service mysql stop
mysql_install_db
mysqld_safe --datadir='/var/lib/mysql'
