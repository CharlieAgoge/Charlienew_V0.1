provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_instance" "test5" {
  ami           = "ami-0903ff18cc3c8e341" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)
  instance_type = "t2.micro"  # Change to the desired instance type
  tags = {
    Name = "sundayexample-instance"
}
}