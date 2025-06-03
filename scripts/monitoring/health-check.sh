#!/bin/bash

# health-check.sh - Script to perform health checks on services and servers

# Function to check if a service is running
check_service() {
    service_name=$1
    if systemctl is-active --quiet $service_name; then
        echo "$service_name is running."
    else
        echo "$service_name is not running!"
        # Optionally, you can add a command to restart the service
        # systemctl restart $service_name
    fi
}

# Function to check server load
check_server_load() {
    load=$(uptime | awk '{print $10}' | sed 's/,//')
    threshold=1.0
    if (( $(echo "$load < $threshold" | bc -l) )); then
        echo "Server load is normal: $load"
    else
        echo "High server load detected: $load"
    fi
}

# List of services to check
services=("nginx" "mysql" "ssh")

# Perform health checks
for service in "${services[@]}"; do
    check_service $service
done

# Check server load
check_server_load

# Add additional health checks as needed
# e.g., disk space, memory usage, etc.