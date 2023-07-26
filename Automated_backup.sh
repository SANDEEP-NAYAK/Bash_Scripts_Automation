#!/bin/bash

##########################################
# Author: Sandeep Nayak
# Date: 26-07-2023
# This script automates the backup process pretty conviniently.
# Feel free to use it as per your needs.
##########################################

set -e #to check for any errors

# Function to take a backup
backup_directory() {
    local source_dir="$1"
    local backup_dir="$2"

    # Create the backup directory if it doesn't exist
    mkdir -p "$backup_dir"

    # Create a timestamp for the backup folder name
    local timestamp=$(date +"%Y%m%d_%H%M%S")

    # Directly copy the source directory to the backup directory
    #cp -r "$source_dir" "$backup_dir/backup_$timestamp"

    # Create a compressed tarball of the source directory and store it in the backup directory
    tar czf "$backup_dir/backup_$timestamp.tgz" "$source_dir"

}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

# Get the source directory and backup directory from command-line arguments
source_directory_path="$1"
backup_directory_path="$2"

# Call the backup_directory function with the provided directories
backup_directory "$source_directory_path" "$backup_directory_path"

echo "Backup of '$source_directory_path' has been successfully created in '$backup_directory_path'."

#you can extract the .tgz file in the backup directory by using "tar xf <file_name>"