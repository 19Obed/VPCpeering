#VPC peering connection 

resource "aws_vpc_peering_connection" "Lezuha-peering" {
  peer_vpc_id   = "${aws_vpc.Lezuha-test-VPC.id}"
  vpc_id        = "${aws_vpc.Lezuha-prod-VPC.id}"
}

# Requester's side of the connection.
resource "aws_vpc_peering_connection" "Lezuha-peer-prod-VPC" {
  vpc_id        = "${aws_vpc.Lezuha-test-VPC.id}"
  peer_vpc_id   = "${aws_vpc.Lezuha-prod-VPC.id}"
  peer_region   = "eu-west-2"
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "Lezuha-peer-test-VPC" {
  vpc_peering_connection_id = "${aws_vpc_peering_connection.Lezuha-peer-prod-VPC.id}"
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}
