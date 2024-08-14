#!/bin/bash

# Exit on error
set -e

# Print each command before executing it
set -x

# Navigate to the directory containing the application
cd /home/ubuntu/clone-comany

# Run unit tests
# For PHP projects, you might use PHPUnit
if [ -f "vendor/bin/phpunit" ]; then
    echo "Running unit tests..."
    vendor/bin/phpunit --config phpunit.xml
else
    echo "No PHPUnit configuration found, skipping tests."
fi

# You can add additional test steps here

echo "Testing completed successfully!"
