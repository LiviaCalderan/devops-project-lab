resource "aws_instance" "this" {
  ami           = "ami-03ea746da1a2e36e7"
  instance_type = "t3.micro"
  associate_public_ip_address = true

  tags = {
    Name = "website-server"
    IAC = "true"
  }
}

