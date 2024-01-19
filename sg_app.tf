resource "aws_security_group" "wp-app-sg" {
  name = "wp-app-sg"
  vpc_id = aws_vpc.vpc.id

  ingress { //SSH
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_groups = [aws_security_group.wp-public-sg.id]
  }
  ingress { //HTTPS
    from_port = 80
    to_port = 80
    protocol = "tcp"
    security_groups = [aws_security_group.wp-alb-sg.id]
  }
  ingress { //HTTPS
    from_port = 443
    to_port = 443
    protocol = "tcp"
    security_groups = [aws_security_group.wp-alb-sg.id]
  }

  egress { //Allow all outbound ports
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress { //HTTPS
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress { //SSH
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}