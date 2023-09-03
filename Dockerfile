FROM php:8.0-fpm-alpine

RUN apk add --no-cache \
    curl \
    git \
    mysql-client

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html

COPY . .

RUN chown -R www-data:www-data .

EXPOSE 80
