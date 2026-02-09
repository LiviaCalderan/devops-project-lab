resource "aws_instance" "this" {
  ami           = data.aws_ami.this.id
  instance_type = "t3.micro"
  associate_public_ip_address = true

  tags = {
    Name = "website-server"
    IAC = "true"
  }
}
