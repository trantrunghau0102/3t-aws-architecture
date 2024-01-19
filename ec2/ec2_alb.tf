resource "aws_lb" "wp-alb" {
  name = "wp-alb"
  load_balancer_type = "application"
  subnets = [aws_subnet.wp-app-subnet-1a.id, aws_subnet.wp-app-subnet-1b.id]
  security_groups = [aws_security_group.wp-alb-sg.id]
}

resource "aws_lb_listener" "wp-alb-listener" {
  load_balancer_arn = aws_lb.wp-alb.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.wp-target-group.arn
  }
}