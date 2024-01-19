
resource "aws_subnet" "wp-app-subnet-1a" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.11.0/24"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name = "wp-app-subnet-1a"
  }
}

resource "aws_subnet" "wp-app-subnet-1b" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.12.0/24"
  availability_zone = "ap-southeast-1b"
  tags = {
    Name = "wp-app-subnet-1b"
  }
}