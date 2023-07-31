resource "aws_route_table_association" "test5b-rta-1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.test5b_rt-1.id
}

resource "aws_route_table_association" "test5b-rta-2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.test5b_rt-1.id
}

resource "aws_route_table_association" "test5b-rta-3" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.test5b_rt-1.id
}