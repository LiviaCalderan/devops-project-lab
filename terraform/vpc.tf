resource "aws_vpc" "this" {
    cidr_block = "10.0.0.0/16"

    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
        IAC = "true"
        Name = "website-vpc"
    }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet-website"
  }
}
