mysql_install_db
mysqld_safe --datadir='/var/lib/mysql'
echo "ooooo"
mysql -e "CREATE USER '$USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASS';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$USER_NAME'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
