resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  multi_az             = true
  db_subnet_group_name = aws_db_subnet_group.sub-grp.id
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Admin123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "sub-grp" {
  name       = "mycustsubnet"
  subnet_ids = ["subnet-0434f16cb56635d81", "subnet-061525d1397fb8401"]
  tags = {
    Name = "My DB Subnet Group"
  }
}


