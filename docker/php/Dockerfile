FROM php:7.1-fpm

RUN apt-get update 

# install libpng-dev necessary to install gd extension
RUN apt-get install libpng-dev -y

# install wget
RUN apt-get install wget -y

# install phpunit to run php tests
RUN wget https://phar.phpunit.de/phpunit-6.5.phar
RUN chmod +x phpunit-6.5.phar
RUN mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version

# install php extensions
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install gd && docker-php-ext-enable gd


