resource "aws_s3_bucket" "cloudndevops" {
  bucket = "cloudndevops-github-actions-terraform-bucket"
}

resource "aws_s3_object" "object-data"{
bucket = aws_s3_bucket.cloudndevops.id 
source = "${path.module}/myfile.txt"
key    = "mydata.txt"
}
