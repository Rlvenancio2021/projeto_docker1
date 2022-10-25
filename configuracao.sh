#!/bin/bash

echo "Atualizando sistema ..."
apt-get update

echo "Instalando docker e docker-compose (servidor Ubuntu) ..."
apt-get install docker.io docker-compose -y


echo "Criando diretórios ..."
mkdir /imagens
mkdir /imagens/meu-site
mkdir /compose
mkdir /compose/meu-site

echo "Copiando arquivos ..."
cp -R /root/meusite/* /imagens/meu-site/
cp -R /root/docker-compose.yml /compose/meu-site/


echo "Rodando sistema ..."
cd /compose/meu-site/
docker-compose up -d

echo "Sistema instalado e rodando com sucesso!!"
