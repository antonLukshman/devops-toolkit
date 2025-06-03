#!/bin/bash

# Function to update the system
update_system() {
    echo "Updating the system..."
    sudo apt-get update && sudo apt-get upgrade -y
}

# Function to install necessary packages
install_packages() {
    echo "Installing necessary packages..."
    sudo apt-get install -y nginx git curl
}

# Function to configure firewall
configure_firewall() {
    echo "Configuring firewall..."
    sudo ufw allow 'Nginx Full'
    sudo ufw enable
}

# Function to create a new user
create_user() {
    read -p "Enter the username for the new user: " username
    sudo adduser $username
    sudo usermod -aG sudo $username
}

# Main script execution
echo "Starting server setup..."

update_system
install_packages
configure_firewall
create_user

echo "Server setup completed successfully!"