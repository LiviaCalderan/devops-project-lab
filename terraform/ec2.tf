resource "aws_instance" "this" {
  ami           = data.aws_ami.this.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id

  associate_public_ip_address = true

  iam_instance_profile   = aws_iam_instance_profile.ec2_ssm_profile.name
  vpc_security_group_ids = [aws_security_group.this.id]

  user_data = file("${path.module}/user_data.sh")

  tags = merge( 
    var.tags,
    {
      Name = "${var.project_name}-instance-ec2"
    }
  )

  depends_on = [aws_internet_gateway.this, aws_route_table.this]
}
