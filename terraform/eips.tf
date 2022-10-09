resource "aws_eip" "nat1" {
  #EIP may require IGW to exist prior to association. 
  #Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main]
  # A map of tags to assign to the resource.
  tags = {
    "Name" = "nat1_eip"
  }
}

resource "aws_eip" "nat2" {
  #EIP may require IGW to exist prior to association. 
  #Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.main]
  # A map of tags to assign to the resource.
  tags = {
    "Name" = "nat2_eip"
  }
}