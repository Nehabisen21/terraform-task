resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "example_assoc" {
  subnet_id      = aws_subnet.in_secondary_cidr.id
  route_table_id = aws_route_table.example.id
}
