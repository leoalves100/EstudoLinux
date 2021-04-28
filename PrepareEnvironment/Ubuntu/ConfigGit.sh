#!/bin/bash

#Permission correct ssh-keygen
chmod 600 ~/.ssh/id_rsa

#Bot agent ssh
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

git config --global user.email 41408250+leoalves100@users.noreply.github.com
git config --global user.nameq "Leandro Alves Magalhães dos Santos"
