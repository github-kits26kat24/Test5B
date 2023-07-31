resource "aws_internet_gateway" "test5b-gw" {
  vpc_id = aws_vpc.test5b.id

  tags = {
    Name = "main"
  }
}