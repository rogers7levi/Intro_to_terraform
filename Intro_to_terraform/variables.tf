variable "region" {
    default = eu-west-2
}
variable "aws_s3_bucket" {
  default = "prject-name-terraform-state-lock"
}
variable "aws_dynamodb_table_name" {
  default = "project-name-terraform-state-lock"
}