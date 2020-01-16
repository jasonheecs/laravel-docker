FROM php:7.4-fpm-alpine

LABEL name="jasonheecs/laravel-docker-compose"
LABEL version="1.0.0"
LABEL maintainer="hello@jasonhee.com"

RUN set -ex \
  && apk add --no-cache libpq libzip-dev \
  && apk add --no-cache --virtual .build-deps \
    postgresql-dev

RUN docker-php-ext-install \
    bcmath \
    pdo \
    pdo_mysql \
    pdo_pgsql \
    zip

ENV COMPOSER_HOME /composer
ENV PATH ./vendor/bin:/composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

RUN apk del -f .build-deps

WORKDIR /var/www
