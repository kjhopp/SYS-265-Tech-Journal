#!/bin/bash
# secure-ssh.sh
# author kjhopp
# creates a new ssh user using $1 parameter
# adds a public key from the local repo or curled from the remote repo
# removes roots ability to ssh in
# echo "ALL OF YOUR CODE GOES HERE"
sudo useradd -m -d /home/$1 -m -d /home/$1 -s /bin/bash $1
sudo mkdir /home/$1/.ssh
sudo touch /home/$1/.ssh/authorize_keys
sudo cp /home/katie/$1/linux/pubic-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$1/.ssh

