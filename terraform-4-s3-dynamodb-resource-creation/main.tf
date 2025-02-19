provider "aws" {
  region = "ap-south-1"
}

#resource "aws_s3_bucket" "example" {
#  bucket = "dkn-bucket"
#}

# TODO: Write Script for pending items, check with Veera's Repo from Naresh IT

# Script for Dynamo DB Creation
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "terraform-state-lock-dynamo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
