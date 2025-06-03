#!/bin/bash

# Rollback script for application deployment

# Function to display usage
usage() {
    echo "Usage: $0 <version>"
    echo "Rolls back the application to the specified version."
    exit 1
}

# Check if version is provided
if [ $# -ne 1 ]; then
    usage
fi

VERSION=$1
DEPLOY_DIR="/path/to/deployment"  # Change this to your deployment directory
CURRENT_VERSION_FILE="$DEPLOY_DIR/current_version.txt"

# Function to rollback
rollback() {
    echo "Rolling back to version $VERSION..."
    
    # Check if the specified version exists
    if [ ! -d "$DEPLOY_DIR/$VERSION" ]; then
        echo "Error: Version $VERSION does not exist."
        exit 1
    fi

    # Perform the rollback
    cp -r "$DEPLOY_DIR/$VERSION/"* "$DEPLOY_DIR/current/"
    
    # Update the current version file
    echo "$VERSION" > "$CURRENT_VERSION_FILE"
    
    echo "Rollback to version $VERSION completed successfully."
}

# Execute rollback
rollback