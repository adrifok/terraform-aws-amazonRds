terraform {
  backend "s3" {
    bucket = "three-tier-terraform-bucket2"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}