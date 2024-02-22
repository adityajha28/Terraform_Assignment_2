variable "aws_region" {
  default = "ap-south-1"
}

variable "s3_bucket_name" {
  default = "my-terraform-bucket"
}

variable "ami_id" {
  default = "ami-06b72b3b2a773be2b"  
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_instance_name" {
   default = "my-terraform-instance"
}

variable "vpc_name" {
   default = "my-terraform-vpc"
}

variable "subnet_name" {
   default = "my-terraform-subnet"
}

variable "igw_name" {
   default = "my-terraform-igw"
}

variable "routetable_name" {
    default = "my-terraform-routetable"  
}

variable "security_group_name" {
    default = "my-terraform-securitygroup"
}

variable "key_pair_name" {
    default = "my-terraform-keypair"
}
