#!/bin/bash

# Log Analyzer Script
# This script analyzes log files for errors and performance issues, providing insights into system health.

LOG_DIR="/var/log"  # Directory where log files are stored
OUTPUT_FILE="log_analysis_report.txt"  # Output report file

# Function to analyze log files
analyze_logs() {
    echo "Analyzing logs in $LOG_DIR..."
    echo "Log Analysis Report" > $OUTPUT_FILE
    echo "===================" >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE

    # Check for error messages
    echo "Error Messages:" >> $OUTPUT_FILE
    grep -i "error" $LOG_DIR/* >> $OUTPUT_FILE

    echo "" >> $OUTPUT_FILE

    # Check for warnings
    echo "Warning Messages:" >> $OUTPUT_FILE
    grep -i "warning" $LOG_DIR/* >> $OUTPUT_FILE

    echo "" >> $OUTPUT_FILE

    # Check for performance issues (e.g., slow requests)
    echo "Performance Issues:" >> $OUTPUT_FILE
    grep -i "slow" $LOG_DIR/* >> $OUTPUT_FILE

    echo "Log analysis completed. Report saved to $OUTPUT_FILE."
}

# Execute the log analysis
analyze_logs