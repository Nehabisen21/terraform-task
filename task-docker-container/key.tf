# Creating Key Pair

resource "aws_key_pair" "deployer" {
  key_name   = "terra-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOPXn1MAxjXrTgExaWkWWZEELItEzGp0rwrwK3rLYbaB ubuntu@ip-172-31-89-197"
}
