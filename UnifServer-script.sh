#!/usr/bin/env bash
### UniFi Server Install Script ###
### Credits go to eW4GJMqscYtbBkw9 from reddit
# Update all package lists, upgrade all packages, and remove unecessary packages
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
# Install required packages
sudo apt install -y gnupg ca-certificates apt-transport-https
