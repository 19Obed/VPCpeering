# EC2 securitygroup for Lezuha-prod-VPC

resource "aws_security_group" "Lezuha-prod-sec" {
  name        = "Lezuha-prod-sec-1"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.Lezuha-prod-VPC.id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Lezuha-prod-sec-1"
  }
}


#EC2 securitygroup for Lezuha-test-VPC 

resource "aws_security_group" "Lezuha-test-sec" {
  name        = "Lezuha-test-sec-1"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.Lezuha-test-VPC.id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Lezuha-test-sec-1"
  }
}