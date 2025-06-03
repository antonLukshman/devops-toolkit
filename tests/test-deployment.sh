#!/bin/bash

# Test script for deployment functions

# Load the deployment script functions
source ../scripts/deployment/deploy.sh
source ../scripts/deployment/rollback.sh

# Function to test deployment
test_deployment() {
    echo "Testing deployment..."
    
    # Simulate a deployment
    deploy_application "test-app" "1.0.0"
    
    # Check if the deployment was successful
    if [ $? -eq 0 ]; then
        echo "Deployment successful."
    else
        echo "Deployment failed."
        rollback_application "test-app"
        echo "Rollback executed."
    fi
}

# Function to run all tests
run_tests() {
    test_deployment
}

# Execute tests
run_tests