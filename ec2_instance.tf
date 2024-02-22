resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my_subnet.id
  key_name = aws_key_pair.my_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  user_data = <<EOF
              #!/bin/bash
              yum udpate -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello</h1>" > /var/www/html/index.html
              EOF

  depends_on = [aws_s3_bucket.my_bucket]  
  
  tags = {
    Name = var.ec2_instance_name
  }
}


output "public_ip" {
  value = aws_instance.my_instance.public_ip
}