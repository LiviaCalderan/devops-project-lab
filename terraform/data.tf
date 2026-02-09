data "aws_ami" "this" {
    most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}