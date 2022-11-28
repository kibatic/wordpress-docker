FROM wordpress:6.1.1-php8.1-apache

RUN a2enmod headers

RUN apt-get -qqq update && DEBIAN_FRONTEND=noninteractive apt-get install -qqq -y \
        libmagickwand-dev \
    	telnet \
    	vim \
        gnupg2 && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pecl install imagick
RUN docker-php-ext-enable imagick
