variable "region" { default = "eu-central-1" }
 
provider "aws" {
 region     = var.region
}
 
resource "aws_s3_bucket" "flux-s3" {
   bucket = "aksh-flux"
   acl = "private"  
}