resource "aws_s3_bucket" "cicd_bucket" {
bucket = "beejan-cicd-bucket"
tags = {
  Name = "CICD"
  environment = "Dev"
}
}