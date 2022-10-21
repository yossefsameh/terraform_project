resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "public-rt"
  }
}
resource "aws_route" "public-r" {
  route_table_id            = aws_route_table.public-rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id  = aws_internet_gateway.my-igw.id
  depends_on = [aws_route_table.public-rt]
}




resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "private-rt"
  }
}

resource "aws_route" "private-r" {
  route_table_id            = aws_route_table.private-rt.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id  = aws_nat_gateway.my-nat.id
  depends_on = [aws_route_table.private-rt]
}