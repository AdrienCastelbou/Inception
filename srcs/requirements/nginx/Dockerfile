FROM debian:buster

MAINTAINER acastelb <acastelb@student.42.fr>

RUN apt-get update && apt-get install -y nginx

RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/.

CMD ["nginx", "-g", "daemon off;"]
