FROM debian:buster

MAINTAINER acastelb <acastelb@student.42.fr>

RUN apt-get update && apt-get install -y nginx

RUN rm /etc/nginx/nginx.conf

RUN mkdir /ssl

COPY conf/acastelb.42.fr.cer /ssl

COPY conf/acastelb.42.fr.key /ssl

COPY conf/nginx.conf /etc/nginx/.

CMD ["nginx", "-g", "daemon off;"]
