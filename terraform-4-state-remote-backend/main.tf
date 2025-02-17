resource "aws_instance" "name" {
  ami           = "ami-0ddfba243cbee3768"
  instance_type = "t2.micro"
  key_name      = "linuxkp"
  availability_zone = "ap-south-1a"
  tags = {
    name = "backend"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "multiclouddkn"
}
