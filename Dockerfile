FROM wordpress:4.9.7-php7.2-apache

RUN a2enmod headers

RUN apt-get -qqq update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -qqq -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
