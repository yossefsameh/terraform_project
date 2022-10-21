terraform {
  backend "s3" {
    bucket = "my-iti-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "test"
  }
}