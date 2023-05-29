FROM php:8.2-fpm

WORKDIR /var/www/html

COPY www.conf /usr/local/etc/php-fpm.d/www.conf

COPY ../src/app1 /var/www/html/app1
COPY ../src/app2 /var/www/html/app2