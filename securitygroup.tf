resource "aws_security_group" "my_security_group" {
  name        = var.security_group_name
  description = "Allow inbound SSH & HTTP and outbound traffic"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["110.226.124.147/32"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}