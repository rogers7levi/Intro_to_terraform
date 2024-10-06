resource "aws_dynamodb_table" "terraform_lock" {
  name = Practice_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = string
  }

  tags = {
    name = "Terraform State Lock"
  }
}