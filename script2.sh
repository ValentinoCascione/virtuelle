#!bin/bash

sudo apt update
sudo apt install apache2 php7.0   libapache2-mod-php7.0 -y
sudo adduser $name
sudo passwd $mdp

echo "Commencons par créer un utilisateur,quel est votre nom d'utilisateur?"
read name
sudo adduser $name

echo "Désormais choisissez un mot de passe qui restera confidentiel."
read mdp


echo "Votre profil a bien été créé!"


