provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
  subnet_id = "subnet-03e317140cf1b1fdc"
  tags ={
    Name="Aksh"
  }
}