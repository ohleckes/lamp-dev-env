#!/bin/bash

echo 'checking for updates'
sudo apt-get update

echo 'applying updates'
sudo apt-get --yes upgrade


# for how to install a LAMP stack on Ubuntu 20.04
# see https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04

echo 'installing apache2'
sudo apt-get --yes install apache2
sudo ufw allow in "Apache"

echo 'installing php'
sudo apt-get --yes install php composer libapache2-mod-php

echo 'installing mysql'
sudo apt-get --yes install mysql-server

# do not run `sudo mysql_secure_installation`
# because this is a development setup