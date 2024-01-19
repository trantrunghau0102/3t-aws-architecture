resource "aws_route_table" "wp-app-rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "wp-app-rt"
  }

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_nat_gateway.natgw.id
  # }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }  

}

resource "aws_route_table_association" "wp-app-rt-1a" {
  route_table_id = aws_route_table.wp-app-rt.id
  subnet_id = aws_subnet.wp-app-subnet-1a.id
}
resource "aws_route_table_association" "wp-app-rt-1b" {
  route_table_id = aws_route_table.wp-app-rt.id
  subnet_id = aws_subnet.wp-app-subnet-1b.id
}
