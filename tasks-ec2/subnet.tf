resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true
}
