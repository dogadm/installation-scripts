#!/bin/bash

sudo apt-get update -y

sudo apt-get install default-jre -y

java -version

sudo apt-get update -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo add-apt-repository universe -y

sudo apt-get update -y 

sudo apt-get install jenkins -y

sudo systemctl status jenkins

sudo systemctl start jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword




