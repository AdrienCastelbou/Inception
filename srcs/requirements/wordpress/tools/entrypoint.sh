if ! [ -d "/var/www/html/wordpress" ]; 
then
	sed -i "s/WP_DB_NAME/'$WP_DB_NAME'/g" /wp-config.php
	sed -i "s/WP_DB_HOST/'$WP_DB_HOST'/g" /wp-config.php
	sed -i "s/WP_DB_USER/'$WP_DB_USER'/g" /wp-config.php
	sed -i "s/WP_DB_PASSWORD/'$WP_DB_PASSWORD'/g" /wp-config.php
	mv wp-config.php /wordpress
	mv wordpress /var/www/html
fi
exec php-fpm7.3 -R -F
