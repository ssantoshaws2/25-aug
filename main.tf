provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "foo" {
  ami           = "ami-022ce6f32988af5fa" 
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
