resource "aws_s3_bucket" "cicd_bucket" {
  bucket = "beejan-cicd-bucket_1"
  tags = {
    Name        = "CICD"
    environment = "Dev",
    Team        = "Engineering"
  }
}