resource "aws_route_table" "wp-data-rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "wp-data-rt"
  }
}

resource "aws_route_table_association" "wp-data-rt-1a" {
  route_table_id = aws_route_table.wp-data-rt.id
  subnet_id = aws_subnet.wp-data-subnet-1a.id
}
resource "aws_route_table_association" "wp-data-rt-1b" {
  route_table_id = aws_route_table.wp-data-rt.id
  subnet_id = aws_subnet.wp-data-subnet-1b.id
}
