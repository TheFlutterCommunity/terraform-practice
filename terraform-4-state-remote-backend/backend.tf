terraform {
  backend "s3" {
    bucket = "dkn-bucket"
    key    = "terrform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }
}


