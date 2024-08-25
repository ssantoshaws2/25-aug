
resource "aws_vpc" "main2" {
  cidr_block = "200.0.0.0/16"

  tags = {
    Name = "SS VPC"
  }
}