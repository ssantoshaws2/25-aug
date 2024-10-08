provider "aws" {
  region     = "ap-south-1"

}

/*

resource "aws_instance" "ec2" {
  ami           = "ami-022ce6f32988af5fa" 
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance jenking 26 aug"
  }
}

*/


resource "aws_instance" "web_instanc3" {
  ami                         = "ami-022ce6f32988af5fa"
  instance_type               = "t2.micro"
  key_name                    = "jenking"
  subnet_id                   = aws_subnet.ss_public_subnet.id
  associate_public_ip_address = "true"
 vpc_security_group_ids      = [aws_security_group.web_sg.id]
  tags = {
  Name = "web-server01" 
    }
user_data =  <<-EOF
 #!/bin/bash
 sudo -i
yum update -y
yum install httpd -y
echo "<html><h1>webpage 1(whatever you want, give the page name here)</h1></html>"
/var/www/html/index.html
service httpd start
chkconfig httpd on
EOF

}