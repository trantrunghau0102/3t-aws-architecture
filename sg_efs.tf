resource "aws_security_group" "wp-efs-sg" {
  name = "wp-efs-sg"
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port = 2049
    to_port = 2049
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