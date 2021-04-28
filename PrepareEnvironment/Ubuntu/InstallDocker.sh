#!/bin/bash

#Update and Upgrade system
UPDATE=sudo apt-get update && sudo apt-get upgrade -y
$UPDATE

#Install dependency Docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y

#Add GPG key Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Add repository Docker
echo \
"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Atualizar novamente
$UPDATE

#Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

#Add user to group docker
sudo usermod -aG docker $USER

#Enable docker boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
