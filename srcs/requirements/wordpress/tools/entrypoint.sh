if ! [ -d "/var/www/html/wordpress" ]; 
then
	sleep 5
	mv wordpress /var/www/html
	wp config create  --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --path=/var/www/html/wordpress --dbhost=$WP_DB_HOST
	sleep 5
	wp core install --url=$DOMAIN_NAME --title=Inception --admin_user=$WPADMIN_NAME --admin_password=$WPADMIN_PASSWORD --admin_email="$WPADMIN_NAME@gstudent.42.fr" --allow-root --path=/var/www/html/wordpress
	wp user create $WPUSER_NAME "$WPUSER_NAME@student.42.fr" --role=author --user_pass=$WPUSER_PASSWORD --allow-root --path=/var/www/html/wordpress
fi
exec php-fpm7.3 -R -F
