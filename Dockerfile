FROM ubuntu
RUN apt update -y
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt install sudo php php-mysql libapache2-mod-php -y
RUN rm -fr /var/www/html/index.html
COPY index.php /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
