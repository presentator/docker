FROM php:7.1-apache

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# install php-extensions and required system packages
RUN apt-get update && apt-get install -y \
        unzip \
        curl \
        software-properties-common \
        gnupg \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    # php extensions
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install zip

# enable rewrite module
RUN a2enmod rewrite headers

# enable write rights in shared volumes
RUN chown -R www-data:www-data /var/www \
    && usermod -u 1000 www-data \
    && usermod -G staff www-data

# download the latest archive
RUN curl https://github.com/ganigeorgiev/presentator/releases/download/v1.13.0/v1.13.0.zip -L -o presentator.zip \
    && unzip presentator.zip -d /var/www/html \
    && rm presentator.zip

# initialize the application
RUN php /var/www/html/init --env=Production --overwrite=y

# copy image docker entrypoint/initialization script
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

# make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# overwrite the base apache image entrypoint
ENTRYPOINT ["entrypoint.sh"]

# execute the default base apache image command
CMD ["apache2-foreground"]
