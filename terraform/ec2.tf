resource "aws_instance" "this" {
  ami           = data.aws_ami.this.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id

  associate_public_ip_address = true

  iam_instance_profile   = aws_iam_instance_profile.ec2_ssm_profile.name
  vpc_security_group_ids = [aws_security_group.this.id]

  tags = {
    Name = "website-server"
    IAC  = "true"
  }

  depends_on = [aws_internet_gateway.this, aws_route_table.this]
}
