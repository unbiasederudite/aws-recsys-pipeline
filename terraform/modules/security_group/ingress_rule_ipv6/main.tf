resource "aws_vpc_security_group_ingress_rule" "main" {
  for_each = toset(var.cidr_ipv6)

  security_group_id = var.security_group_id
  from_port = var.from_port
  ip_protocol = var.ip_protocol
  to_port = var.to_port
  cidr_ipv6 = each.value
}