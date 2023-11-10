provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
    count=2
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
  subnet_id = "subnet-0a39425a7e9257475"
  tags ={
    Name="Aksh Flux-${count.index}"
  }
}

# variable "region" { default = "eu-central-1" }
 
# provider "aws" {
#  region     = var.region
# }
 
# resource "aws_s3_bucket" "wego-tfc-test-s3" {
#    bucket = "wego-tfc-test-s3"
#    acl = "private"  
# }