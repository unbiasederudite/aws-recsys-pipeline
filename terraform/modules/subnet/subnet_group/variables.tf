variable "subnet_ids" {
  type = list(string)
  description = "VPC subnet IDS for the subnet group resource"
}

variable "name" {
  type = string
  description = "Name for the subnet group resource"
}