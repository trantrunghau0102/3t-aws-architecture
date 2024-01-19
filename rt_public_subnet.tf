resource "aws_route_table" "wp-public-rt" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "wp-public-rt"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "wp-public-rt-1a" {
  route_table_id = aws_route_table.wp-public-rt.id
  subnet_id = aws_subnet.wp-public-subnet-1a.id
}

resource "aws_route_table_association" "wp-public-rt-1b" {
  route_table_id = aws_route_table.wp-public-rt.id
  subnet_id = aws_subnet.wp-public-subnet-1b.id
}