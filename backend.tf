terraform {
  backend "s3" {
    bucket         = "my-tfstatefilestorer"  
    key            = "statefiledir/terraform.tfstate"  # Path inside S3
    region         = "eu-central-1"  
    encrypt        = true  # to encrypt state file
    dynamodb_table = "terraform-state-lock"  # name of dynamoDB table  
  }
}
