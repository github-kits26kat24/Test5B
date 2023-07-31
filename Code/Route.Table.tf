resource "aws_route_table" "test5b_rt-1" {
  vpc_id = aws_vpc.test5b.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test5b-gw.id
  }

  tags = {
    Name = "rt-1"

  }
}

# resource "aws_route_table" "test5b-rt-2" {
#   vpc_id = aws_vpc_test5b.id

#   tags = {
#     Name = "rt-2"
#   }
# }
