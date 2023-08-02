resource "aws_instance" "Marketing_Node" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.dev_default_tags_1 # var.ec2_name_1
}
resource "aws_instance" "Finance_Node" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.public_2.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.dev_default_tags_2 # var.ec2_name_2
}

resource "aws_instance" "Legal_Node" {

  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = var.ec2_key_name
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.ec2_test5b_sg.id]
  tags                   = var.sit_default_tags # var.ec2_name_3
}

# resource "aws_instance" "MariaDB_1" {

#   ami           = var.ec2_ami
#   instance_type = var.ec2_instance_type
#   key_name      = var.ec2_key_name
#   subnet_id     = aws_subnet.private_1.id

#   tags = var.tags_3
# }
