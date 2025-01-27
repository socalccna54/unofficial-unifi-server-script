#!/usr/bin/env bash
#UniFi Server Script
#Credits goes to eW4GJMqscYtbBkw9 from reddit
# Update package lists, upgrade all packages, and remove unnecessary packages
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
# Install required packages
sudo apt install -y gnupg curl ca-certificates apt-transport-https
# Add MongoDB GPG key and repository
#curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
#echo "deb [ arch=amd64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/7.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
# Add Unifi GPG key and repository
#curl -fsSL https://dl.ui.com/unifi/unifi-repo.gpg | sudo gpg -o /usr/share/keyrings/unifi-repo.gpg --dearmor
#echo 'deb [ arch=amd64 signed-by=/usr/share/keyrings/unifi-repo.gpg ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/unifi.list
# Update package lists again to include the new repositories
#sudo apt update
# Install MongoDB and Unifi
#sudo apt install -y mongodb-org
#sudo apt install -y unifi
