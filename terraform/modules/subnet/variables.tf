variable "vpc_id" {
  type = string
  description = "VPC ID of the subnet resource"
}

variable "cidr_block" {
  type = string
  description = "CIDR block for the subnet resource"
}

variable "az" {
  type = string
  description = "AZ for the subnet resource"
}

variable "name" {
  type = string
  description = "Name for the subnet resource"
}