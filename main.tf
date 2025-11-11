terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

#provider "aws" {
#  profile = "live"
#  region  = "eu-west-2"
#}

provider "aws" {
  alias   = "dev"
  profile = "dev"
  region  = "eu-west-2"
}

provider "aws" {
  alias   = "live"
  profile = "live"
  region  = "eu-west-2"
}

module "live_state" {
  source = "./state"

  providers = {
    aws = aws.live
  }
}

module "dev_state" {
  source = "./state"

  providers = {
    aws = aws.dev
  }
}