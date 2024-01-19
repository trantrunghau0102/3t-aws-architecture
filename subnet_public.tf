resource "aws_subnet" "wp-public-subnet-1a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "wp-public-subnet-1a"
  }
}

resource "aws_subnet" "wp-public-subnet-1b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "wp-public-subnet-1b"
  }
}
