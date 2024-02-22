resource "aws_key_pair" "my_key_pair" {
  key_name   = var.key_pair_name
  public_key = file("C:/Users/promact.DESKTOP-L6Q2MV5/terraform_assignment2/adityakeypair01.pem.pub") 
}