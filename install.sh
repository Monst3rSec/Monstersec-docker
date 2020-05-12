#update the machine before install
sudo apt update

#adding the offical docker PGP key 
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

#configure the apt to install,downlaod and update the bundle

echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list

#update the packages 
sudo apt update

#removed the old docker packages
sudo apt remove docker docker-engine docker.io

#ready to install the docker 
sudo apt install docker-ce -y
