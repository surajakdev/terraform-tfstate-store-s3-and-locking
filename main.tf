
# DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = "terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"  
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform State Lock Table"
  }
}


# s3 bucket
resource "aws_s3_bucket" "TfstatefileStorer" {
  bucket = "my-tfstatefilestorer"
  acl = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket TfstatefileStorer"
    Environment = "Dev"
  }
}

# ec2 machine
resource "aws_instance" "eg_machine_for_tfstatefile" {
  ami           = "ami-0e872aee57663ae2d"  
  instance_type = "t2.micro"

  tags = {
    Name = "tfsatefilecheckEC2Instance"
  }
}


