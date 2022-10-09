resource "aws_subnet" "public_1" {
  #The VPC ID
  vpc_id = aws_vpc.main.id

  #The CIDR block for the subnet
  cidr_block = "192.168.0.0/18"

  #The AZ for the subnet
  availability_zone = "eu-west-1a"

  #Required for EKS.Instances launched into the subnet should be assi
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "public-eu-west-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/roel/elb"    = 1
  }
}

resource "aws_subnet" "public_2" {
  #The VPC ID
  vpc_id = aws_vpc.main.id

  #The CIDR block for the subnet
  cidr_block = "192.168.64.0/18"

  #The AZ for the subnet
  availability_zone = "eu-west-1b"

  #Required for EKS.Instances launched into the subnet should be assi
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                        = "public-eu-west-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/roel/elb"    = 1
  }
}

resource "aws_subnet" "private_1" {
  #The VPC ID
  vpc_id = aws_vpc.main.id

  #The CIDR block for the subnet
  cidr_block = "192.168.128.0/18"

  #The AZ for the subnet
  availability_zone = "eu-west-1a"

  #Required for EKS.Instances launched into the subnet should be assi
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                              = "private-eu-west-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/roel/internal-elb" = 1
  }
}

resource "aws_subnet" "private_2" {
  #The VPC ID
  vpc_id = aws_vpc.main.id

  #The CIDR block for the subnet
  cidr_block = "192.168.192.0/18"

  #The AZ for the subnet
  availability_zone = "eu-west-1b"

  #Required for EKS.Instances launched into the subnet should be assi
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name                              = "private-eu-west-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/roel/internal-elb" = 1
  }
}