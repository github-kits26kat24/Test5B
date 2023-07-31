resource "aws_instance" "Node_1" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.ec2_name_1
}
resource "aws_instance" "Node_2" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.public_2.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.ec2_name_2
}

resource "aws_instance" "MariaDB" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.ec2_name_3
}

# resource "aws_instance" "MariaDB_1" {

#   ami           = var.ec2_ami
#   instance_type = var.ec2_instance_type
#   key_name      = var.ec2_key_name
#   subnet_id     = aws_subnet.private_1.id

#   tags = var.tags_3
# }
