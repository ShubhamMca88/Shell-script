#!/bin/bash

# Define the project directory
PROJECT_DIR="terraform_project"

# Define the subdirectories and files
mkdir -p $PROJECT_DIR/modules

# Create the Terraform configuration files
touch $PROJECT_DIR/main.tf
touch $PROJECT_DIR/variables.tf
touch $PROJECT_DIR/outputs.tf
touch $PROJECT_DIR/providers.tf
touch $PROJECT_DIR/terraform.tfvars
touch $PROJECT_DIR/backend.tf

echo "Terraform project structure created successfully!"
