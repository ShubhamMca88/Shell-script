# Comprehensive Guide to Shell Scripting

## Table of Contents
1. [Introduction](#introduction)
2. [Key Shell Scripting Terms](#key-shell-scripting-terms)
3. [Common Shell Commands](#common-shell-commands)
4. [Shell Scripting Techniques](#shell-scripting-techniques)
5. [Example Shell Script](#example-shell-script)
6. [Tips and Best Practices](#tips-and-best-practices)

---

## Introduction
Shell scripting is a vital skill for automating tasks, managing servers, and performing system operations in Linux/Unix environments. Shell scripts are composed of a series of commands, logic, and functions that can be executed together.

---

## Key Shell Scripting Terms

### 1. **Shebang (`#!`)**
- The first line specifies the interpreter for the script.
- Example: `#!/bin/bash`

### 2. **Variables**
- Store data for use within the script.
- Example:
  ```bash
  name="Alice"
  echo "Hello, $name"
  ```
### 3. Environment Variables
- Predefined variables in the system.
- Example:
  ```bash
  echo $HOME
  ```
### 4. Function 
- Reusable code blocks for modular scripting.
- Example:
    ```bash
    greet() {
    echo "Hello, $1"
    }
    greet "World"
    ```
### 5. Conditionals
- Decision-making using if, elif, and else.
- Example:
    ```bash
    if [[ -f file.txt ]]; then
        echo "File exists"
    else
        echo "File not found"
    fi
    ```
### 6. Loops
- Iterate over items or repeat tasks.
- Example:
    ```bash
    for file in *.txt; do
        echo "Processing $file"
    done
    ```
### 7. Exit Status
- Commands return exit codes (0 = success, non-zero = failure).
- Example:
    ```bash
    echo $?
    ```
## Common Shell Commands

 ```bash
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

# 11 .View file contents.
cat file.text

#12. Change file permissions.
chmod +x script.sh

#13. Schedule jobs.(crontab)
crontab -e       # for add cron jobs 
crontab -l       # check list jobs 
crontab -r       # remove the jobs 
```
## Shell Scripting Techniques
### 1. Redirection
- Redirect output or errors to files.
- Example:
    ```bash
    command > output.txt  # Standard output
    command 2> error.txt  # Standard error
    ```
### 2. Piping
- Use the output of one command as input to another.
- Example:
    ```bash
    ls -l | grep "pattern"
    ```
### 3. Background Jobs
- Run tasks in the background.
- Example:
    ```bash
    long_task &
    ```
### 4. Subshells
- Execute commands in a child shell.
- Example:
    ```bash
    (cd /tmp && ls)
    ```
### 5. Error Handling
- Check for command success or failure.
- Example:
    ```bash
    if ! command; then
        echo "Command failed!" >&2
    fi
    ```