resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3.bucket.name
  acl = private

  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = AES256
      }
    }
  }
  lifecycle_rule {
    id = "delete_old_version"
    enabled = true
    noncurrent_version_expiration {
      days = 30
    }
  }
}