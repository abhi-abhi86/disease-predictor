#!/bin/bash
#================================================================================
# Quick Start Script for Disease Predictor Application
#================================================================================
# 
# DESCRIPTION: 
#   This script automates the startup process for the Disease Predictor
#   application by activating the virtual environment and launching the main
#   application entry point.
#
# USAGE:
#   ./run_app.sh
#
# PREREQUISITES:
#   - Virtual environment must be set up in ./venv directory
#   - Python dependencies must be installed in the virtual environment
#   - main.py must exist in the project root directory
#
# FEATURES:
#   - Uses relative paths for better portability across different systems
#   - Automatically detects script location for path resolution
#   - Activates Python virtual environment before running the application
#
# EXIT CODES:
#   0 - Success
#   Non-zero - Error (from Python application or activation failure)
#
# AUTHOR:  abhi-abhi86
# REPOSITORY: https://github.com/abhi-abhi86/disease-predictor
#================================================================================

# Get the absolute directory path where this script is located
# This ensures the script works regardless of where it's called from
# - BASH_SOURCE[0]:  Path to the current script
# - dirname:  Extracts the directory portion of the path
# - cd && pwd: Changes to that directory and prints absolute path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Activate the Python virtual environment
# The virtual environment isolates project dependencies from system Python
# Path:  <project_root>/venv/bin/activate
source "$DIR/venv/bin/activate"

# Run the main Disease Predictor application
# Launches the primary entry point of the application
python "$DIR/main.py"

# Note: The virtual environment remains active after script execution
# To deactivate manually, run: deactivate
