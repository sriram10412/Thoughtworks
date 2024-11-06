# Setup our aws provider
variable "region" {
  default = "ap-southeast-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "news4321-sriram-infra-na"
    region = "ap-southeast-1"
    dynamodb_table = "news4321-terraform-locks"
    key = "news/terraform.tfstate"
  }
}
