if ! [ -d "/var/www/html/wordpress" ]; 
then
	mv wp-config.php /wordpress
	mv wordpress /var/www/html
fi
php-fpm7.3 -R -F
