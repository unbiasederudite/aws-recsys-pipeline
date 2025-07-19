resource "aws_security_group" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.name
  }
}
