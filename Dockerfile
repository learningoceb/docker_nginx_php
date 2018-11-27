FROM ubuntu:18.04



RUN apt-get -y update
RUN apt-get install -y nginx
RUN apt-get install -y php-fpm


COPY default /etc/nginx/sites-available/
COPY www.conf /etc/php/7.2/fpm/pool.d/www.conf 
COPY hello.php /var/www/html/hello.php 
EXPOSE 80

CMD service nginx start && service php7.2-fpm start
