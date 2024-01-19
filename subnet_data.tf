resource "aws_subnet" "wp-data-subnet-1a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.21.0/24"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "wp-data-subnet-1a"
  }
}

resource "aws_subnet" "wp-data-subnet-1b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.22.0/24"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "wp-data-subnet-1b"
  }
}