provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state-charlie"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state-charlie"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
resource "aws_instance" "test5" {
  ami           = "ami-0903ff18cc3c8e341" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)
  instance_type = "t2.micro"  # Change to the desired instance type
  tags = {
    Name = "sundayexample-instance"
}
}