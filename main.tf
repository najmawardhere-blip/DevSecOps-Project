provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodaysun" {
  bucket = "terraformbuckettodaysun"  
}
resource "aws_s3_bucket_public_access_block" "terraformbuckettodaysun_block" {
  bucket = aws_s3_bucket.terraformbuckettodaysun.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}