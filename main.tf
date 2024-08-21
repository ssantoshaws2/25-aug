provider "aws" {
  region     = "ap-south-1"
<<<<<<< HEAD
  access_key = "AKIAQ3EGU6U2XLUZMGJ5"
  secret_key = "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"
}


=======
}

>>>>>>> 717d6c8f9d7b713a88df4038675965d45e378f65
resource "aws_instance" "foo" {
  ami           = "ami-022ce6f32988af5fa" 
  instance_type = "t2.micro"
  tags = {
<<<<<<< HEAD
      Name = "TF-Instance"
=======
      Name = "TF-Instance jenking"
>>>>>>> 717d6c8f9d7b713a88df4038675965d45e378f65
  }
}
