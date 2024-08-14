#!/bin/bash

# Exit on error
set -e

# Print each command before executing it
set -x

# Navigate to the directory containing the application
cd /home/ubuntu/clone-comany

# Install dependencies using Composer (assuming PHP project)
if [ -f "composer.json" ]; then
    echo "Installing PHP dependencies..."
    composer install
fi

# You can add additional build steps here, such as:
# Minifying CSS/JS files
# Running a build tool like Webpack

echo "Build completed successfully!"
