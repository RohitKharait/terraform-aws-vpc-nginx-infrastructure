resource "aws_s3_bucket" "Create_bucket" {

  bucket = "project-my-unique-bucket-name-12345"

  tags = {
    Environment = "Dev"
  }
}

