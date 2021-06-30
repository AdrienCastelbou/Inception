if ! [ -d "/var/www/html/wordpress" ]; 
then
	sleep 5
	mv wordpress /var/www/html
	wp config create  --allow-root --dbname=$WP_DB_NAME --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --path=/var/www/html/wordpress --dbhost=mariadb
	sleep 5
	wp core install --url=acastelb.42.fr --title=Inception --admin_user="lol" --admin_password="lol_pass" --admin_email="lol@gmail.com" --allow-root --path=/var/www/html/wordpress 
fi
exec php-fpm7.3 -R -F
