#!/bin/bash

#FOR UBUNTU OS

sudo apt-get update
sudo apt install git openjdk-8-jdk maven -y
sudo apt install openjdk-11-jdk -y

sudo update-alternatives --config java

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt install jenkins
systemctl start jenkins
