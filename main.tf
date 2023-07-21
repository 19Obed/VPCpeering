#aws networking

resource "aws_vpc" "Lezuha-prod-VPC" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Lezuha-prod-VPC"
  }
}

#public subnet

resource "aws_subnet" "Lezuha-prod-pub-sub" {
  vpc_id     = aws_vpc.Lezuha-prod-VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Lezuha-prod-pub-sub"
  }
}

#private subnet 

resource "aws_subnet" "Lezuha-prod-priv-sub" {
  vpc_id     = aws_vpc.Lezuha-prod-VPC.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Lezuha-prod-priv-sub"
  }
}



#aws network 2

resource "aws_vpc" "Lezuha-test-VPC" {
  cidr_block           = "172.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "Lezuha-test-VPC"
  }
}

#public subnet

resource "aws_subnet" "Lezuha-test-pub-VPC" {
  vpc_id     = aws_vpc.Lezuha-test-VPC.id
  cidr_block = "172.0.3.0/24"

  tags = {
    Name = "Lezuha-0test-pub-sub"
  }
}

#private subnet 

resource "aws_subnet" "Lezuha-test-priv-VPC" {
  vpc_id     = aws_vpc.Lezuha-test-VPC.id
  cidr_block = "172.0.4.0/24"

  tags = {
    Name = "Lezuha-test-priv-sub"
  }
}