resource "aws_subnet" "ss_public_subnet" {
  vpc_id            = aws_vpc.main2.id
  cidr_block        = "200.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "SS Public Subnet"
  }
}

resource "aws_subnet" "ss_private_subnet2" {
  vpc_id            = aws_vpc.main2.id
  cidr_block        = "200.0.2.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "SS Private Subnet"
  }
}