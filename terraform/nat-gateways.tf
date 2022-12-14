resource "aws_nat_gateway" "gw1" {

  #The allocation ID of the Elastic IP addresses for the gateway
  allocation_id = aws_eip.nat1.id

  #The Subnet ID of the subnet in which to place the gateway
  subnet_id = aws_subnet.public_1.id
  # A map of tags to assign to the resoucre
  tags = {
    Name = "NAT 1"
  }
}

resource "aws_nat_gateway" "gw2" {

  #The allocation ID of the Elastic IP addresses for the gateway
  allocation_id = aws_eip.nat2.id

  #The Subnet ID of the subnet in which to place the gateway
  subnet_id = aws_subnet.public_2.id
  # A map of tags to assign to the resoucre
  tags = {
    Name = "NAT 2"
  }
}