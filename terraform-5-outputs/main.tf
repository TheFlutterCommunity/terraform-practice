resource "aws_instance" "dev" {
  ami           = "ami-0ddfba243cbee3768"
  instance_type = "t2.micro"
  key_name      = "linuxkp"
  tags = {
    name = "dev"
  }
}

terraform {
  backend "s3" {
    bucket = "dkn-bucket"
    key    = "Day-5/terrform.tfstate"
    region = "ap-south-1"
    #dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }
}

