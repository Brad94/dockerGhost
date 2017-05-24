#!/usr/bin/env bash
wget -q -O - https://get.docker.com | sh

sudo service docker start

sudo usermod -aG docker ubuntu
sudo docker pull ghost

docker run --name some-ghost -p 8080:2368 -d ghost