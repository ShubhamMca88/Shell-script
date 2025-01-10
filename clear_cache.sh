#!/bin/bash

# Clear the page cache, dentries, and inodes
sudo sync
echo 3 | sudo tee /proc/sys/vm/drop_caches

# Display free memory
# free -h
