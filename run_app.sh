#!/bin/bash
# Quick Start Script for Disease Predictor Application
# Usage: ./run_app.sh
# Enhanced with relative paths for better portability

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Activate virtual environment
source "$DIR/venv/bin/activate"

# Run the application
python "$DIR/main.py"
