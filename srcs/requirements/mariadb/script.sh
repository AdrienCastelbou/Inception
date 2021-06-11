service mysql start
mysql -e "CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"
mysqld
