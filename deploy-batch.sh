#!/bin/bash
# deploy.sh

echo "🚀 Iniciando despliegue..."

# Clonar el repositorio
git clone https://github.com/JorgeManu/Lab12 && cd Lab12

sudo apt update

sudo apt install -y docker.io

sudo systemctl enable docker

sudo systemctl start docker

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose


# Desplegar con docker-compose
sudo docker-compose up -d
sudo docker-compose up -d
echo " Proyecto desplegado!"
