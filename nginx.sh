#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update the package list
sudo apt update -y
sudo apt-get update -y

# Install Nginx and Git
sudo apt-get install -y nginx git

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Configure the firewall to allow HTTP and HTTPS
sudo ufw allow 'Nginx Full'
sudo ufw --force enable

# Variables
APP_NAME="Demo_web"
APP_DIR="/var/www/${APP_NAME}"
REPO_URL="https://github.com/ShubhamMca88/Demo---Static-website.git" # Replace with your Git repo
BRANCH="main" # Replace with the branch you want to clone
NGINX_CONF="/etc/nginx/conf.d/${APP_NAME}.conf"

# Set up the directory structure for the application
sudo mkdir -p ${APP_DIR}
sudo chown -R $USER:$USER ${APP_DIR}

# Clone the application code
git clone -b ${BRANCH} ${REPO_URL} ${APP_DIR}

# Set permissions
sudo chown -R www-data:www-data ${APP_DIR}
sudo chmod -R 755 ${APP_DIR}

# Create an Nginx configuration file in conf.d for the application
sudo tee ${NGINX_CONF} > /dev/null <<EOL
server {
    listen 80;
    server_name _; # Replace with your domain or IP

    root ${APP_DIR};
    index index.html index.htm;

    # Logging
    access_log /var/log/nginx/${APP_NAME}_access.log;
    error_log /var/log/nginx/${APP_NAME}_error.log;

    location / {
        try_files \$uri \$uri/ =404;
    }

    # Uncomment this block for reverse proxy setup
    # location /api/ {
    #     proxy_pass http://127.0.0.1:5000; # Replace with your backend server
    #     proxy_http_version 1.1;
    #     proxy_set_header Upgrade \$http_upgrade;
    #     proxy_set_header Connection 'upgrade';
    #     proxy_set_header Host \$host;
    #     proxy_cache_bypass \$http_upgrade;
    # }
}
EOL

# Test and reload Nginx
sudo nginx -t
sudo systemctl reload nginx
