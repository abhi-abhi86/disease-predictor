#!/bin/bash
# Script to run the disease classifier training with correct environment and SSL fix

# Ensure we are in the script's directory
cd "$(dirname "$0")"

# Path to venv
VENV_PATH="../venv"

if [ ! -d "$VENV_PATH" ]; then
    echo "Error: Virtual environment not found at $VENV_PATH"
    echo "Please ensure you have set up the environment."
    exit 1
fi

PYTHON_EXEC="$VENV_PATH/bin/python"

# Check if certifi is installed and set SSL_CERT_FILE
if $PYTHON_EXEC -c "import certifi" &> /dev/null; then
    export SSL_CERT_FILE=$($PYTHON_EXEC -m certifi)
    echo "Using certificates from: $SSL_CERT_FILE"
else
    echo "Warning: certifi not found. SSL errors may occur."
fi

echo "Starting training..."
$PYTHON_EXEC train_disease_classifier.py
