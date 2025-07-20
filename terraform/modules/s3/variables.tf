variable "bucket" {
  description = "Identifier name for the S3 bucket resource"
  type = string
}

variable "name" {
  description = "Name for the S3 bucket resource"
  type = string
}

variable "force_destroy" {
  description = "Force destruction of items when the S3 bucket resource is deleted"
  type = bool
}