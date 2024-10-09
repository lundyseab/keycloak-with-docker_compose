#!bin/bash
echo "Starting setuping up scripts..."
sudo apt-get update
sudo apt-get install nginx -y

# Create a new Nginx configuration file
sudo cp ./nginx-revers-proxy/proxy.conf /etc/nginx/conf.d/proxy.conf

# start docker compose 
sudo docker compose up --build -d

echo "Keycloak are successfully installed and configured."