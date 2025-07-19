variable "allocated_storage" {
  description = "Allocates storage in GB of the RDS resource"
  type = number
}

variable "skip_final_snapshot" {
  description = "Determines whether a final RDS snapshot is created before the RDS instance is deleted"
  type = bool
}

variable "engine" {
  description = "RDMBS engine of the RDS resource"
  type = string
}

variable "vpc_security_group_ids" {
  description = "List of assciated VPC security groups of the RDS resource"
  type = list(string)
}

variable "db_subnet_group_name" {
  description = "Name of subnet group of the RDS resource"
  type = string
}

variable "engine_version" {
  description = "RDMBS engine's version of the RDS resource"
  type = string
}

variable "instance_class" {
  description = "Instance type of the RDS resource"
  type = string
}

variable "storage_type" {
  description = "Storage type of the RDS resource"
  type = string
}

variable "username" {
  description = "Username of the master user of the RDS resource"
  type = string
}

variable "password" {
  description = "Password of the master user of the RDS resource"
  type = string
}

variable "multi_az" {
  description = "Multi-AZ RDS resource property"
  type = bool
}

variable "name" {
  description = "Name for the RDS resource"
  type = string
}
