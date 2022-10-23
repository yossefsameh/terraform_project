resource "aws_subnet" "first-public-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.pupsub1_cidr
  availability_zone = var.availability_zone_1
  map_public_ip_on_launch = "true"
  tags = {
    Name = "first-public-subnet"
  }
}

resource "aws_subnet" "second-public-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.pupsub2_cidr
  availability_zone = var.availability_zone_2
  map_public_ip_on_launch = "true"
  tags = {
    Name = "second-public-subnet"
  }
}

resource "aws_subnet" "first-private-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.prisub1_cidr
  availability_zone = var.availability_zone_1
  tags = {
    Name = "first-private-subnet"
  }
}

resource "aws_subnet" "second-private-subnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.prisub2_cidr
  availability_zone = var.availability_zone_2
  tags = {
    Name = "second-private-subnet"
  }
}
