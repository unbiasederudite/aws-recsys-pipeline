variable "security_group_id" {
  type = string
  description = "Security group ID of the egress rule"
}

variable "cidr_ipv4" {
  type = list(string)
  description = "IPv4 range of the egress rule"
}

variable "ip_protocol" {
  type = string
  description = "IP protocol name of the egress rule"
}

variable "from_port" {
  type = number
  description = "Starting port of the egress rule"
}

variable "to_port" {
  type = number
  description = "Ending port of the egress rule"
}

