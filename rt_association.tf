resource "aws_route_table_association" "pub-associate1" {
  subnet_id      = aws_subnet.first-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}


resource "aws_route_table_association" "pub-associate2" {
  subnet_id      = aws_subnet.second-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "peivate-associate1" {
  subnet_id      = aws_subnet.first-private-subnet.id
  route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "peivate-associate2" {
  subnet_id      = aws_subnet.second-private-subnet.id
  route_table_id = aws_route_table.private-rt.id
}