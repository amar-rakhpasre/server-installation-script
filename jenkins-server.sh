#!/bin/bash
# "Installation of Java"
# "Jenkins requires Java to run, yet not all Linux distributions include Java by default. Additionally, not all Java versions are compatible with Jenkins."

sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version

# Long Term Support release

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y && sudo apt upgrade -y

sudo apt install jenkins

#Start Jenkins
#You can enable the Jenkins service to start at boot with the command:

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins




