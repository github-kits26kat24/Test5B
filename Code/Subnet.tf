# Creating A Subnet 
# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/subnet

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.test5b.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1a"
  tags = {
    Name = "Node_1"
  }
}
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.test5b.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1b"
  tags = {
    Name = "Node_2"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.test5b.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "false"

  # AZ for the subnet.

  availability_zone = "eu-west-1c"
  tags = {
    Name = "MariaDB"
  }
}

