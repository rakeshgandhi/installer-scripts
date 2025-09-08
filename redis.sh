add-apt-repository ppa:redislabs/redis
apt update -y
apt install redis -y 
systemctl enable redis-server.service
sudo systemctl start redis
sudo systemctl status redis
