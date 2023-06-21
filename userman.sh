#!/bin/bash
# Prompt the user for username and password
read -p "Enter username: " username
read -s -p "Enter password: " password

# Create a new user with the provided username and password
useradd "$username"
echo "$username:$password" | chpasswd

# Add the user to the sudo group
usermod -aG sudo "$username"

# Display the user information
echo "User created successfully:"
echo "Username: $username"
echo "Home Directory: /home/$username"
echo "Shell: $(getent passwd "$username" | cut -d: -f7)"
