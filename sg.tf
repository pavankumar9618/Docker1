resource "aws_security_group" "sg" {
  name        = "admin"
  description = "admin"
  vpc_id      ="vpc-0945725fd44bb90cb"

  ingress {
    description      = "admin"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["45.249.77.98/32"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "admin"
  }
}