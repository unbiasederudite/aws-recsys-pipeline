resource "aws_db_instance" "main" {
  allocated_storage = var.allocated_storage

  engine = var.engine
  engine_version = var.engine_version

  instance_class = var.instance_class
  storage_type = var.storage_type

  db_subnet_group_name = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  
  username = var.username
  password = var.password

  skip_final_snapshot = var.skip_final_snapshot
  multi_az = var.multi_az
}