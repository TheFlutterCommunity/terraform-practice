resource "aws_instance" "name" {
  ami           = "ami-0ddfba243cbee3768"
  instance_type = "t2.nano"
  key_name      = "linuxkp"
  tags = {
    name = "dev"
  }
}
