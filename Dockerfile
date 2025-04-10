FROM php:7.4-apache
COPY ./app_2/ /var/www/html/
RUN docker-php-ext-install -j$(nproc) mysqli
