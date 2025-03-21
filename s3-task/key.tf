resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINjOq7F7XdhwAbb6WAaWhmiV648ZBgs1068qxAS8y0pE root@ip-172-31-93-12"
}
