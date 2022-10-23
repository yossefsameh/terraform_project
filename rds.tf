resource "aws_db_subnet_group" "rds-sub-group" {
  name       = "rds-sub-group"
  subnet_ids = [module.mynetwork.prisub1_id, module.mynetwork.prisub2_id]

  tags = {
    Name = "rds-sub-group"
  }
}

resource "aws_db_instance" "My-rds" {
  allocated_storage     = 10
  storage_type = "gp2"
  db_subnet_group_name = aws_db_subnet_group.rds-sub-group.id
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.7"
  db_name                 = "Myrds"
  username             = "user"
  password             = "passworduser"
  tags = {
    Name = "My_rds"
  }
}