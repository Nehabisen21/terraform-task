resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBDyh8pPS5l2Rthq3TJqxGWlUIUBht4M6YzUyYIY446d root@ip-172-31-86-206"
}
