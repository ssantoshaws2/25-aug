
resource "aws_security_group" "web_sg" {
  name   = "SS VPC ALL"
  vpc_id = aws_vpc.main2.id

  dynamic "ingress" {
    for_each = [80, 443, 22, 3306, 27017]
    iterator = port

    content {
      description = "Inbound Port Open"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    description = " Outbound Port Open"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
    #cidr_blocks = ["1.2.3.4/32"]
  }

}