FROM php:7.4-apache

MAINTAINER Tamilan <t.masco@fonicom.com>

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

#COPY custom.conf /etc/apache2/sites-available/000-custom.conf
#COPY custom.conf /etc/apache2/sites-enabled/000-custom.conf


#enable rewrite rule
RUN a2enmod rewrite

COPY src /var/www/

COPY .htaccess /var/www/public/.htaccess

#RUN chown -R www-data:www-data /var/www

#CMD ["start-apache"]