#!/usr/bin/env bash
### UniFi Server Install Script ###
### Credits go to eW4GJMqscYtbBkw9 from reddit
# Update all package lists, upgrade all packages, and remove unecessary packages
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
# Install required packages
sudo apt install ca-certificates apt-transport-https software-properties-common gnupg curl -y
# Add MongoDB GPG key and repository
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
# Add Unifi GPG key and repository
curl -fsSL https://dl.ui.com/unifi/unifi-repo.gpg | sudo gpg -o /usr/share/keyrings/unifi-repo.gpg --dearmor
echo 'deb [ arch=amd64 signed-by=/usr/share/keyrings/unifi-repo.gpg ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/unifi.list
# Update package lists again to include the new repositories
sudo apt update
# Install MongoDB and Unifi
sudo apt install -y mongodb-org
sudo apt install -y unifi
