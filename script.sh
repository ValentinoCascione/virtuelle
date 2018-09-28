#!bin/bash

echo "nous créons le dossier vagrant"
touch Vagrantfile
echo "Choisssez votre IP:"
read  ip
echo "Choisissez le nom de votre dossier:"
read  dossier

cat > vagrantfile << eof
# -- mode: ruby --
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/xenial64"
config.vm.network "private_network", ip: "$ip"
config.vm.synced_folder "./$dossier", "/var/www/html"
end
eof

read -s -p "Êtes-vous sur de vouloir nommé votre dossier ainsi?" DOSSIER; echo
mkdir $dossier


vagrant up
vagrant ssh
cd ../


