FROM php:8.2-apache

# Active les modules Apache utiles (ex: pour Laravel, Symfony ou .htaccess)
RUN a2enmod rewrite

# Facultatif : modifie le dossier racine si besoin
# ENV APACHE_DOCUMENT_ROOT /var/www/html/public
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/000-default.conf

# Copie initiale (sera écrasée par le volume, mais utile pour le build)
COPY . /var/www/html
