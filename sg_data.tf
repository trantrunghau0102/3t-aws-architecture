resource "aws_security_group" "wp-data-sg" {
  name = "wp-data-sg"
  vpc_id = aws_vpc.vpc.id

  ingress { //MYSQL
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    security_groups = [aws_security_group.wp-app-sg.id]
  }
  ingress { //Redis
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    security_groups = [aws_security_group.wp-app-sg.id]
  }

  egress { //Allow all outbound ports
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}