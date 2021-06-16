FROM debian:buster
# Download php
RUN apt update -y
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring
# Download wordpress
RUN mkdir -p /var/www/html
RUN apt install wget -y
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN tar -zxvf latest-fr_FR.tar.gz -C /var/www/html
RUN rm -f latest-fr_FR.tar.gz
COPY tools/entrypoint.sh entrypoint.sh
COPY conf/wp-config.php /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN chmod 755 /entrypoint.sh
RUN mkdir -p /run/php
#ENTRYPOINT /entrypoint.sh
CMD ["php-fpm7.3", "-R", "-F"]
