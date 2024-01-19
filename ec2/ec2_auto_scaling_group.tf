resource "aws_autoscaling_group" "asg" {
  name = "wp-asg"
  desired_capacity = 4
  min_size = 0
  max_size = 10

  vpc_zone_identifier = [aws_subnet.wp-app-subnet-1a.id, aws_subnet.wp-app-subnet-1b.id]
  
  launch_template {
    id = aws_launch_template.wp-launch-template.id
    version = "$Latest"
  }

  target_group_arns = [aws_lb_target_group.wp-target-group.id]
  health_check_type = "ELB"
}