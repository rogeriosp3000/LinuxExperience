#!/bin/bash

echo "Atualizando o servidor"

apt-get-update
apt-get upgrade -y

echo "instalando o apache2"

apt-get install -y apache2 unzip 

cd /tmp/

echo "Baixando o projeto
"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip 

echo "Movendo o projeto para o diretorio padrao"

mv linux-site-dio-main/* /var/www/html/

