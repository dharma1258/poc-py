#!/bin/bash
apt-get update -qq
apt-get -qq -y install python3 git
curl -fsSL https://get.docker.com | bash -
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker run -d --hostname my-rabbit --name rabbittestuser --network host -e RABBITMQ_DEFAULT_USER=test -e RABBITMQ_DEFAULT_PASS=test rabbitmq:3
cd /opt
git clone https://github.com/dharma1258/poc-py.git celery
cd celery
docker-compose up -d
