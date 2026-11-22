resource "aws_s3_bucket" "cicd_bucket" {
  bucket = "beejan-cicd-bucket-1"
  tags = {
    Name        = "CICD"
    environment = "Dev",
    Team        = "Engineering"
  }
}