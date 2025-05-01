# AWS CLI Commands

Below are some commonly used AWS CLI commands for managing AWS resources.

## General Commands

```sh
# Configure AWS CLI
aws configure

#View All Configured Profiles
aws configure list

#Manually View Configuration Files
cat ~/.aws/credentials

# all user list
cat ~/.aws/config

#Check Which Profile is in Use
aws configure list --profile your_profile_name

#Go back to the default profileva
unset AWS_PROFILE

# List all available AWS services
aws services list

# Get help for any AWS command
aws help
```

## S3 Commands

```sh
# List all S3 buckets
aws s3 ls

# Create a new S3 bucket
aws s3 mb s3://my-bucket-name

# Delete an S3 bucket
aws s3 rb s3://my-bucket-name

# Upload a file to an S3 bucket
aws s3 cp myfile.txt s3://my-bucket-name/

# Download a file from an S3 bucket
aws s3 cp s3://my-bucket-name/myfile.txt .

# Sync a local directory with an S3 bucket
aws s3 sync my-local-dir/ s3://my-bucket-name/
```

## EC2 Commands

```sh
# List all EC2 instances
aws ec2 describe-instances

# Start an EC2 instance
aws ec2 start-instances --instance-ids i-1234567890abcdef0

# Stop an EC2 instance
aws ec2 stop-instances --instance-ids i-1234567890abcdef0

# Terminate an EC2 instance
aws ec2 terminate-instances --instance-ids i-1234567890abcdef0
```

## IAM Commands

```sh
# List all IAM users
aws iam list-users

# List all IAM roles
aws iam list-roles

# Create a new IAM user
aws iam create-user --user-name my-user

# Delete an IAM user
aws iam delete-user --user-name my-user

# List access keys for the current IAM user
aws iam list-access-keys

# Create a new access key for the current IAM user
aws iam create-access-key

# Delete an access key for the current IAM user
aws iam delete-access-key --access-key-id ACCESS_KEY_ID

# Attach a policy to an IAM user
aws iam attach-user-policy --user-name my-user --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess
```

## ECR Commands

```sh
# List all ECR repositories
aws ecr describe-repositories

# List all ECR repositories in a specific region
aws ecr describe-repositories --region your-region

# List all ECR repositories with a specific filter
aws ecr describe-repositories --repository-names my-repo

# Log in to ECR
aws ecr get-login-password --region your-region | docker login --username AWS --password-stdin your-account-id.dkr.ecr.your-region.amazonaws.com

# Create a new ECR repository
aws ecr create-repository --repository-name my-repo

# Delete an ECR repository
aws ecr delete-repository --repository-name my-repo

# List images in an ECR repository
aws ecr list-images --repository-name my-repo

# Describe an image in an ECR repository
aws ecr describe-images --repository-name my-repo --image-ids imageTag=latest

# Delete an image from an ECR repository
aws ecr batch-delete-image --repository-name my-repo --image-ids imageTag=latest
```

## EKS Commands

```sh
# List all EKS clusters
aws eks list-clusters

# Describe an EKS cluster
aws eks describe-cluster --name my-cluster

# Create a new EKS cluster
aws eks create-cluster --name my-cluster --role-arn arn:aws:iam::123456789012:role/EKSRole --resources-vpc-config subnetIds=subnet-12345678,subnet-87654321,securityGroupIds=sg-12345678

# Delete an EKS cluster
aws eks delete-cluster --name my-cluster

```

## Key Pair Commands

```sh
# List all key pairs
aws ec2 describe-key-pairs

# Create a new key pair
aws ec2 create-key-pair --key-name my-key-pair

# Delete a key pair
aws ec2 delete-key-pair --key-name my-key-pair

# Describe a key pair
aws ec2 describe-key-pairs --key-name my-key-pair
```

<!-- For more detailed information and additional commands, refer to the [AWS CLI Command Reference](https://docs.aws.amazon.com/cli/latest/reference/). -->