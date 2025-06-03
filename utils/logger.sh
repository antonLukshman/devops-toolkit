#!/bin/bash

# Logger function to standardize log output
log_info() {
    echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log_warning() {
    echo "[WARNING] $(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log_error() {
    echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - $1" >&2
}

log_debug() {
    if [ "$DEBUG" == "true" ]; then
        echo "[DEBUG] $(date '+%Y-%m-%d %H:%M:%S') - $1"
    fi
}