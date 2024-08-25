
resource "aws_internet_gateway" "some_ig" {
  vpc_id = aws_vpc.main2.id

  tags = {
    Name = "SS Internet Gateway"
  }
}