
resource "aws_vpc" "main" {
  cidr_block = "200.0.0.0/16"

  tags = {
    Name = "SS VPC"
  }
}