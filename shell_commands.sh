#!/bin/bash

# 1. echo: Print text or variables
echo "Hello, World!"

# 2. ls: List files and directories
ls -l /path/to/directory

# 3. grep: Search for patterns in files or output
grep "search_string" /path/to/file

# 4. find: Search for files and directories
find /path/to/search -type f -name "*.txt"

# 5. awk: Text processing and pattern matching
awk '{print $1, $3}' /path/to/file

# 6. sed: Stream editor for modifying text
sed 's/old/new/g' /path/to/file

# 7. if: Conditional statements
if [[ -f /path/to/file ]]; then
    echo "File exists"
else
    echo "File does not exist"
fi

# 8. for: Loops
for file in /path/to/files/*; do
    echo "Processing $file"
done

# 9. read: Read input from the user
read -p "Enter your name: " name
echo "Hello, $name"

# 10. exit: Exit the script with a status code
exit 0
