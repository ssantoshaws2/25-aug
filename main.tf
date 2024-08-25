provider "aws" {
  region     = "ap-south-1"

}


resource "aws_vpc" "main2" {
  cidr_block = "200.0.0.0/16"

  tags = {
    Name = "SS VPC"
  }
}


resource "aws_instance" "main2" {
  ami           = "ami-022ce6f32988af5fa" 
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance jenking 26 aug pvt"
  }
}
