# resource "aws_eip" "eip" {
#   domain = "vpc"
# }
# resource "aws_nat_gateway" "natgw" {
#   allocation_id = aws_eip.eip.id
#   subnet_id = aws_subnet.wp-public-subnet-1a.id

#   tags = {
#     Name = "wp-natgw"
#   }
# }