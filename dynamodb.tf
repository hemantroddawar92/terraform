resource "aws_dynamodb_table" "devsecopsb36-terraform-state-lock" {
  name         = "devsecopsb36-terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
