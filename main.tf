terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2" # London region
}

# Make the bucket name unique to avoid global S3 name collisions during apply
resource "random_pet" "suffix" {
  length = 2
}

resource "aws_s3_bucket" "terraformbuckettodaysun" {
  bucket = "terraformbuckettodaysun-${random_pet.suffix.id}"

  tags = {
    Name = "terraformbuckettodaysun"
  }
}
