#!/bin/bash
# Create a new directory
mkdir my_directory

# Change into the directory
cd my_directory

# Create a new file
touch my_file.txt

# Append some text to the file
echo "Hello, World!" >> my_file.txt

# Display the contents of the file
cat my_file.txt

# Rename the file
mv my_file.txt new_file.txt

# Delete the file
rm new_file.txt

# Go back to the parent directory
cd ..
