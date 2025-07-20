resource "aws_s3_bucket_versioning" "main" {
  bucket = var.bucket
  versioning_configuration {
    status = var.status
  }
}