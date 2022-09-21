resource "aws_instance" "docker" {  
  ami                    = "ami-018d291ca9ffc002f"
  instance_type          = "t2.micro"
  key_name               = "won"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id              = "subnet-0e47b14e4e87be226"
  tags = {
    name = "docker"
    Terraform   = "true"
    Environment = "dev"
  }
}