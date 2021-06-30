FROM debian:buster
# Download php
RUN apt update -y
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring mariadb-client
# Download wordpress
RUN mkdir -p /var/www/html
RUN apt install wget -y
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN tar -zxvf latest-fr_FR.tar.gz
RUN rm -f latest-fr_FR.tar.gz
COPY tools/entrypoint.sh entrypoint.sh
RUN chown -R www-data:www-data /wordpress
RUN chmod 755 /entrypoint.sh
RUN sed -i 's/;listen.allowed_clients = 127.0.0.1/listen = 0.0.0.0:9000 /' /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php
ENTRYPOINT /entrypoint.sh
