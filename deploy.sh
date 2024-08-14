#!/bin/bash

# Define the destination directory on the server
DEST_DIR="/home/ubuntu/clone-comany"

# Create the destination directory if it does not exist
mkdir -p $DEST_DIR

# Copy files to the destination directory
echo "Copying files to $DEST_DIR"
cp -r * $DEST_DIR

# Optional: Restart any services if needed (e.g., web server)
# sudo systemctl restart apache2

echo "Deployment completed successfully!"
