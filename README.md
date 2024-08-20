# EC2 Setup with Terraform and automated tfstate file Storage in s3 and DynamoDB Locking
This project automates the provisioning of an EC2 instance using Terraform. Changes are applied from the local machine, with the Terraform state file stored in an AWS S3 bucket. To ensure consistency and prevent conflicts, state locking is managed using DynamoDB.

### S3 bucket 

![s3](https://github.com/user-attachments/assets/4e0ba52c-a601-4a7b-9686-1e87b0070cdf)


### DynamoDB image before applying changes using terraform apply command 
![before_locking](https://github.com/user-attachments/assets/827f1f72-3253-44a0-abcb-ef7113e02dad)

### Locking initiated after apply command
![applying](https://github.com/user-attachments/assets/49ac9cbf-bbbc-4132-85a7-1a79c1be6978)
###
### ID Locking
![id_locking](https://github.com/user-attachments/assets/0515ca82-9666-4b05-8ecf-30e6e0501112)

### Terraform state file stored in s3 bucket when apply command is used to make changes using terraform script.

![statefile_stored_in_s3](https://github.com/user-attachments/assets/2475fc5b-df9b-454b-991e-641d64df0a3e)
