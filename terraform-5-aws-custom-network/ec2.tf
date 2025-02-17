# Creation of Server
resource "aws_instance" "prod" {
  ami                    = "ami-0ddfba243cbee3768"
  instance_type          = "t2.micro"
  key_name               = "linuxkp"
  subnet_id              = aws_subnet.prod.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "prod"
  }
}
