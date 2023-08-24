resource "aws_db_subnet_group" "mariadb-sg" {
  name        = "mariadb-subnet"
  description = "RDS subnet group"
  subnet_ids  = [aws_subnet.public_1.id, aws_subnet.private.id]
}
resource "aws_db_parameter_group" "mariadb-pg" {
  name   = "mariadb-parameter"
  family = "mariadb10.3"

  parameter {
    name  = "max_allowed_packet"
    value = "16777216"
  }
}
resource "aws_db_instance" "mariadb" {
  allocated_storage = 5 # 100 GB of storage, gives us more IOPS than a lower number
  engine            = "mariadb"
  engine_version    = "10.3"
  instance_class    = "db.t2.micro" # use micro if you want to use the free tier
  identifier             = "mariadb"
  db_name                = "mydatabase"    # database name
  username               = "kits26kat2486" # var.RDS_USERNAME # username
  password               = "kitskatrds"    # var.RDS_PASSWORD # password
  db_subnet_group_name   = aws_db_subnet_group.mariadb-sg.name
  parameter_group_name   = aws_db_parameter_group.mariadb-pg.name
  multi_az               = "false" # set to true to have high availability: 2 instances synchronized with each other
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  storage_type           = "gp2" # ?
  #backup_retention_period   = 30                                          # how long you’re going to keep your backups
  # availability_zone         = [aws_subnet.private.availability_zone] # prefered AZ
  final_snapshot_identifier = "mariadb-final-snapshot" # final snapshot when executing terraform destroy
  skip_final_snapshot       = "true" # false If you want a snapshot of the RDS instance before it gets destroyed and recreated
  tags = {
    Name = "mariadb-engine"
  }
}

# resource "aws_db_instance" "Tomcat-App-Server-1" {
#   allocated_storage    = 10
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   name                 = "mydb"
#   username             = "kitkat"
#   password             = "kits26kat2486!"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
#   db_subnet_group_name = aws_db_subnet_group.private_subnet_3.name
# }
# resource "aws_db_subnet_group" "private_subnet_3" {
#   name       = "test03"
#   subnet_ids = [aws_subnet.private_subnet_3.id, aws_subnet.private_subnet_4.id]
#   tags = {
#     Name = "My_DB_subnet_project03"
#   }
# }