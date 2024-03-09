resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
}

resource "subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.cidr
  availability_zone       = var.region
  map_public_ip_on_launch = true
}