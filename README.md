# iaw-practica-05

## Balanceador de carga con Apache

Para esta práctica he usado los scripts creados en la práctica 3 para los front-end y back-end y sus archivos de configuración. Tan solo he tenido que modificar las IP de las máquinas
usadas en esta práctica.

Para el balaceador he creado un nuevo script que instala apache y ciertos módulos que necesita usar para su funcionamiento y un archivo de configuración donde se introducen las dos IP
de los front-end.

- Instalamos apache:

    `apt install apache2 -y`

- Inicamos los módulos necesarios:

    ```
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
    ```

- Copiamos el archivo de configuración y reiniciamos apache:

    `cp 000-default.conf /etc/apache2/sites-enabled/`

    `systemctl restart apache2`