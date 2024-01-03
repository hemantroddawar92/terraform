resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = var.owner
    environment = var.environment
  }
  depends_on = [
    aws_s3_bucket.devsecopsb36test001
  ]
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = var.IGW_name
  }
}
