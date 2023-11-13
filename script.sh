#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Instalar Apache2
sudo apt install apache2 -y

# Instalar PHP y sus módulos
sudo apt install php libapache2-mod-php php-mysql -y

# Instalar MariaDB y configurar una contraseña para el usuario root
sudo apt install mariadb-server -y
sudo mysql_secure_installation

# Instalar phpMyAdmin y configurar el acceso
sudo apt install phpmyadmin -y

# Habilitar el módulo PHP en Apache2
sudo a2enmod php

# Habilitar las extensiones PHP  para phpMyAdmin
sudo phpenmod mbstring
sudo phpenmod zip

# Reiniciar Apache2 para aplicar los cambios
sudo systemctl restart apache2
