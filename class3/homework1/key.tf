resource "aws_key_pair" "deployer" {
  key_name   = "homework-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output key {
    value= aws_key_pair.deployer.key_type
}