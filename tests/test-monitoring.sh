#!/bin/bash

# Test script for monitoring scripts

# Function to test health-check.sh
test_health_check() {
    echo "Running health-check tests..."
    ./../monitoring/health-check.sh
    if [ $? -eq 0 ]; then
        echo "Health check passed."
    else
        echo "Health check failed."
        exit 1
    fi
}

# Function to test log-analyzer.sh
test_log_analyzer() {
    echo "Running log-analyzer tests..."
    ./../monitoring/log-analyzer.sh
    if [ $? -eq 0 ]; then
        echo "Log analysis passed."
    else
        echo "Log analysis failed."
        exit 1
    fi
}

# Main function to run all tests
main() {
    test_health_check
    test_log_analyzer
    echo "All monitoring tests completed successfully."
}

# Execute main function
main