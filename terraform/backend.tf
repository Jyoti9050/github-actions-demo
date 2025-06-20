terraform {
  backend "s3" {
    bucket = "cloudndevops-terraform-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
