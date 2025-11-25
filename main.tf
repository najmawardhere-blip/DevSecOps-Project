provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodaysun" {
  bucket = "terraformbuckettodaysun"
  block_puplic_acls = true
}
 {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettodaysun"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}