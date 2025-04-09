#!/bin/bash

echo "atualizando o Linux.."
#Atualizando o server 
apt-get update
apt-get upgrade -y

echo "instalando o apache2.."
#Instalando o server WEB 
apt-get install apache2 -y

echo "instalando o unzip.."
#Instalando o uinzip
apt-get install unzip -y 

echo "criando o diretorio tmp.."
#Criando um diretorio 'tmp' se for necessario 
mkdir tmp

echo "acessando o diretorio tmp.."
# acessando o pastas /tmp
cd tmp

echo "baixando o arquivo na web.."
#baixando o arquivo .zip´para o diretorio 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando os arquivos.."
#Descompactar  o arquivo .zip
unzip main.zip

echo "acessando o diretorio linux-site-dio.."
#Acessando o diretorio 
cd linux-site-dio-main

echo "copiando os arquivos para o diretorio /http.."
#Compiando os aqruivos para a pastas html 
cp -R * /var/www/html/
