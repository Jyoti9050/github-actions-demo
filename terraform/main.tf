provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

resource "aws_instance" "cloudndevops_pipeline_ec2" {
  ami           = "ami-09e6f87a47903347c" # Update to latest AMI ID for your region
  instance_type = "t2.micro"
  tags = {
    Name = "GitHubActionsEC2"
  }
}

resource "aws_s3_bucket" "cloudndevops" {
  bucket = "cloudndevops-github-actions-terraform-bucket"
}

resource "aws_s3_object" "object-data"{
bucket = aws_s3_bucket.cloudndevops.id 
source = "${path.module}/myfile.txt"
key    = "mydata.txt"
}
