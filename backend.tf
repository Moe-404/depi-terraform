terraform {
  backend "s3" {
    bucket = "depi-terraform-state-bucket"
    key    = "statefile/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "depi-terraform-state-lock"
  }
}