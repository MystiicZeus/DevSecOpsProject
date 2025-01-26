provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "dan-n-devsecops-project" {
  bucket = "dan-n-devsecops-project"
  }
  terraform {
    backend "s3" {
      bucket = "dan-n-devsecops-project"
      key = "global/s3/terraform.tfstate"
      region = "eu-west-2"
    }
  }
  