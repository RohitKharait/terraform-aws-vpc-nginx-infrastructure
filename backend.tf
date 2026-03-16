terraform {
  backend "s3" {
    bucket = "project-my-unique-bucket-name-12345"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }
}