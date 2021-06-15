FROM debian:buster
# Download php
RUN apt update -y
RUN apt install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring
# Download wordpress
RUN apt install wget -y
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN tar -zxvf latest-fr_FR.tar.gz
RUN mkdir /usr/var 
RUN mkdir /usr/var/html
RUN mv /wordpress /usr/var/html/.
RUN rm -f latest-fr_FR.tar.gz
#Permissions
#RUN chown -R www-data:www-data /usr/var/html/wordpress
#RUN find /usr/var/html/wordpress/ -type d -exec chmod 750 {} \;
#RUN find /usr/var/html/wordpress/ -type f -exec chmod 640 {} \;
CMD tail -f
