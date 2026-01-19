resource "random_id" "suffix" {
  byte_length = 4
}
resource "aws_s3_bucket" "this" {
  bucket = "terraformbuckettodaysun-${random_id.suffix.hex}"
}
