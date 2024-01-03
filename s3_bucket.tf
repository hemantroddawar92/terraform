# resource "aws_s3_bucket" "devsecopsb36tfstate" {
#   bucket = "devsecopsb36tfstate"
#   tags = {
#     Name        = "devsecopsb36tfstate"
#     Environment = var.environment
#   }
# }

resource "aws_s3_bucket" "devsecopsb36test001" {
  bucket = "devsecopsb36test001"
  tags = {
    Name        = "devsecopsb36test001"
    Environment = var.environment
  }
  depends_on = [
    aws_s3_bucket.devsecopsb36test002
  ]
}

resource "aws_s3_bucket" "devsecopsb36test002" {
  bucket = "devsecopsb36test002"
  tags = {
    Name        = "devsecopsb36test002"
    Environment = var.environment
  }
  depends_on = [
    aws_s3_bucket.devsecopsb36test003
  ]
}

resource "aws_s3_bucket" "devsecopsb36test003" {
  bucket = "devsecopsb36test003"
  tags = {
    Name        = "devsecopsb36test003"
    Environment = var.environment
  }
}
