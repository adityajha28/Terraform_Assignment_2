resource "aws_key_pair" "my_key_pair" {
  key_name   = var.key_pair_name
  public_key = file("adityakeypair01.pem.pub") 
}