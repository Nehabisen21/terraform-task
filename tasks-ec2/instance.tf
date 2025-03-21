resource "aws_instance" "server" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id              = aws_subnet.in_secondary_cidr.id

  tags = {
    Name = "web"
  }
}


