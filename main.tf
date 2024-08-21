provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAQ3EGU6U2XLUZMGJ5"
  secret_key = "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"
}


resource "aws_instance" "foo" {
  ami           = "ami-022ce6f32988af5fa" 
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}
