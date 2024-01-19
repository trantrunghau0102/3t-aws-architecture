resource "aws_launch_template" "wp-launch-template" {
  name = "wp-launch-template"
  image_id = "ami-0e3bed41dc194b20a"
  instance_type = "t2.micro"
  key_name = "ap-southeast-key"

  network_interfaces {
    subnet_id = aws_subnet.wp-app-subnet-1a.id
    security_groups = [aws_security_group.wp-app-sg.id]
  }
  iam_instance_profile {
    
  }
  # user_data = base64encode(<<-EOF
  #   #!/bin/bash
  #   systemctl restart php8.0-fpm
  #   systemctl restart nginx
  #   EOF
  # )
}