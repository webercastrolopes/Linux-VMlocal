#!/bin/bash 
echo "...entrei na execução do sript02"
echo "Fazendo atualizacoes do ambiente Ubuntu"
apt-get update
apt-get upgrade 
echo ""
echo "***********************************************************************"
echo ""
echo "Instalando o Servidor - Apache Web"
echo ""
apt-get install apache2 
echo "***********************************************************************"
echo ""
echo ""
echo "Instalando o Descompactador de arquivos - UNZIP"
echo "***********************************************************************"
echo ""
echo ""
apt-get install unzip 
echo ""
echo "Descompatando projeto Web"
echo "***********************************************************************"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Implementando projeto Web"
echo "***********************************************************************"
cd linux-site-dio-main
cp -R * /var/www/html
echo "** Projeto Implementado em /var/www/html, com sucesso ! **"
echo "Para testar :"
echo "                 1.) Verificar se os arquivos foram copiados para /var/www/html"
echo "                 2.) Teste a execução via browser em localhost"
echo "                 3.) Estando tudo ok, subir projeto para meu GitHub em novo REPO"
echo "                 4.) Finalizar tarefa02 na DIO"
echo "...Fim !"
