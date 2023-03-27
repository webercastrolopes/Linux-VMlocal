#!/bin/bash
clear
echo "started project-01"
echo "Iniciando execucao do projeto 01"
echo ""
echo ""
echo "Fase 01 - Criando os diretorios ..."
sudo mkdir publico
sudo mkdir adm
sudo mkdir ven
sudo mkdir sec
echo "Diretorios criados !"
echo ""
echo ""
echo "Fase 02 - Criando os Grupos"
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC
echo "Grupos criados !"
echo ""
echo ""
echo "Fase 03 - Usuarios"
echo "Criando Usuarios do Grupo ADM"
echo ""
sudo useradd carlos -m -c "Depto ADM" -e -s /bin/bash -G GRP_ADM
sudo useradd maria -m -c "Depto ADM" -e -s /bin/bash -G GRP_ADM
sudo useradd joao -m -c "Depto ADM" -e -s /bin/bash -G GRP_ADM
echo ""
echo "Criando Usuarios do grupo VEN"
sudo useradd debora -m -c "Depto VEN" -e -s /bin/bash -G GRP_VEN
sudo useradd sebastiana -m -c "Depto VEN" -e -s /bin/bash -G GRP_VEN
sudo useradd roberto -m -c "Depto VEN" -e -s /bin/bash -G GRP_VEN
echo ""
echo "Criando Usuarios do grupo SEC"
sudo useradd josefina -m -c "Depto SEC" -e -s /bin/bash -G GRP_SEC
sudo useradd amanda - m -c "Depto SEC" -e -s /bin/bash -G GRP_SEC
sudo useradd rogerio -m -c "Depto SEC" -e -s /bin/bash -G GRP_SEC
echo ""
echo "Fim criação de usuario"
echo ""
echo ""
echo "Definindo permissões nos grupos"
sudo chown root:GRP_ADM adm
sudo chown root:GRP_VEN ven
sudo chown root:GRP_SEC sec
echo ""
echo ""
echo "Definindo permissão nas pastas"
sudo chmod 770 adm
sudo chmod 770 ven
sudo chmod 770 sec
echo ""
echo "Finalizado permissoes em grupos e pastas"
echo ""
echo "PARABENS - Projeto 01 Finalizado !"
