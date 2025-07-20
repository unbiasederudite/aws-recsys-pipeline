variable "role" {
  description = "IAM role to attach the IAM policy resource"
  type = string
}

variable "policy" {
  description = "Inline IAM policy document of the IAM policy resource"
  type = string
}

variable "name" {
  description = "Name for the IAM policy resource"
  type = string
}