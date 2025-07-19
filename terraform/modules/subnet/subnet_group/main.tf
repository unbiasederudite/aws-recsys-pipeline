resource "aws_db_subnet_group" "main" {
  subnet_ids = var.subnet_ids
  tags = {
    Name = var.name
  }
}
