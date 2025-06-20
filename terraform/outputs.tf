output "s3_bucket_name" {
  description = "Name of s3 Bucket" 
  value       = aws_s3_bucket.cloudndevops.id
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the ec2instance"
  value       = aws_instance.cloudndevops_pipeline_ec2.public_ip
}

output "ec2_instance_url" {
  description = "The url to access the Nginx Server"
  value       = "http://${aws_instance.cloudndevops_pipeline_ec2.public_ip}"
}



