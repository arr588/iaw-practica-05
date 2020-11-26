#!/bin/bash

#-------------------------------------------------------------------------------
# Instalamos los módulos necesarios
#-------------------------------------------------------------------------------

set -x

# Actualizamos la lista de paquetes
apt update -y
apt upgrade -y

# Instalamos Apache
apt install apache2 -y

# Activamos los módulos necesarios
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests

# Movemos el archivo de configuración de apache a su directorio
cp 000-default.conf /etc/apache2/sites-enabled/

# Reiniciamos Apache
systemctl restart apache2