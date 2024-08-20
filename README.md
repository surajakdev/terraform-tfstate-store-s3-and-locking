# EC2 Setup with Terraform and automated tfstate file Storage in s3 and DynamoDB Locking
This project automates the provisioning of an EC2 instance using Terraform. Changes are applied from the local machine, with the Terraform state file stored in an AWS S3 bucket. To ensure consistency and prevent conflicts, state locking is managed using DynamoDB.

