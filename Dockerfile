FROM php:7.3-apache

RUN apt-get update && apt-get install -y \
    unzip \
    git \
    curl \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli pdo pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html

COPY . .

EXPOSE 80
