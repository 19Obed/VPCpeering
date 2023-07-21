#EC2 instances for Lezuha-prod-VPC

resource "aws_instance" "Lezuha-prod-EC2-1" {
  ami                         = "ami-038056f5d3df2259d"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.Lezuha-prod-sec.id]
  subnet_id                   = aws_subnet.Lezuha-prod-priv-sub.id


  tags = {
    Name = "Lezuha-prod-EC2-1"
  }
}


resource "aws_instance" "Lezuha-prod-EC2-2" {
  ami                         = "ami-038056f5d3df2259d"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.Lezuha-prod-sec.id]
  subnet_id                   = aws_subnet.Lezuha-prod-pub-sub.id


  tags = {
    Name = "Lezuha-prod-EC2-2"
  }
}


#EC2 instances for Lezuha-test-VPC

resource "aws_instance" "Lezuha-test-EC2-1" {
  ami                         = "ami-038056f5d3df2259d"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.Lezuha-test-sec.id]
  subnet_id                   = aws_subnet.Lezuha-test-priv-VPC.id


  tags = {
    Name = "Lezuha-test-EC2-1"
  }
}


resource "aws_instance" "Lezuha-test-EC2-2" {
  ami                         = "ami-038056f5d3df2259d"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.Lezuha-test-sec.id]
  subnet_id                   = aws_subnet.Lezuha-test-pub-VPC.id


  tags = {
    Name = "Lezuha-test-EC2-2"
  }
}