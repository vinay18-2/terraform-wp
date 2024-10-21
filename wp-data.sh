#!/bin/bash
sudo yum install git -y
sudo git clone https://github.com/vinay18-2/wordpress-1.git
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo mv wordpress-docker/* /home/ec2-user/
cd /home/ec2-user/
docker-compose up -d
