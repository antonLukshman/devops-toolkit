#!/bin/bash

# Common functions for DevOps automation scripts

# Function to print messages in a standardized format
log_message() {
    local message="$1"
    local log_level="${2:-INFO}"
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] [$log_level] $message"
}

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to exit with an error message
exit_with_error() {
    local message="$1"
    log_message "$message" "ERROR"
    exit 1
}

# Function to create a directory if it doesn't exist
create_directory_if_not_exists() {
    local dir="$1"
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir" || exit_with_error "Failed to create directory: $dir"
        log_message "Created directory: $dir"
    fi
}