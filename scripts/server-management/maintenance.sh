#!/bin/bash

# Maintenance script for routine server tasks

# Function to update the system packages
update_system() {
    echo "Updating system packages..."
    sudo apt-get update && sudo apt-get upgrade -y
}

# Function to clean up unnecessary files
cleanup_system() {
    echo "Cleaning up unnecessary files..."
    sudo apt-get autoremove -y
    sudo apt-get clean
}

# Function to check disk usage
check_disk_usage() {
    echo "Checking disk usage..."
    df -h
}

# Function to restart services
restart_services() {
    echo "Restarting services..."
    # Add commands to restart specific services if needed
    # Example: sudo systemctl restart apache2
}

# Main function to perform maintenance tasks
main() {
    update_system
    cleanup_system
    check_disk_usage
    restart_services
    echo "Maintenance tasks completed."
}

# Execute the main function
main