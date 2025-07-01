resource "aws_instance" "cloudndevops_pipeline_ec2" {
  ami                         = "ami-05ffe3c48a9991133"    # Update to latest AMI ID for your region
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true
  user_data                   = <<-EOF
                              #!/bin/bash
                              sudo yum install nginx -y
                              sudo systemctl start nginx
                              EOF
  tags = {
    Name = "GitHubActionsEC2"
  }
}
