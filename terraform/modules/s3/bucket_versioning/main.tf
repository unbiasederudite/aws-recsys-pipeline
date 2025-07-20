resource "aws_s3_bucket_versioning" "terraform-state" {
  bucket = var.bucket
  versioning_configuration {
    status = var.status
  }
}