#!/usr/bin/env bash

echo 'Starting Provision: db1'
debconf-set-selections <<< 'mysql-server mysql-server/root_password password arzybagas'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password arzybagas'
apt-get update
apt-get install -y mysql-server
echo 'Provision db1 complete'