resource "aws_lb" "alb-web" {
  name               = var.alb-web-name
  internal           = false
  load_balancer_type = "application"

  subnets = [
    aws_subnet.web-subnet1.id,
    aws_subnet.web-subnet2.id
  ]
}
  
resource "aws_security_group" "sg" {
  name        = "example-security-group"
  description = "Example security group"
  vpc_id      = aws_vpc.vpc.id

}
#enable_deletion_protection = false
#enable_cross_zone_load_balancing = true