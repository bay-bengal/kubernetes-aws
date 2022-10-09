resource "aws_vpc" "main" {
  #The CIDR block for the VPC
  cidr_block       = "192.168.0.0/16"

  #Makes your instances shared on the host.
  instance_tenancy = "default"


  #Required for EKS.Enable/Disable DNS support in the VPC.
  enable_dns_support = true

  #Required for EKS.Enable/Disable DNS support in the VPC.
  enable_dns_hostnames = true

  #Enable/dissable ClassicLink for the VPC
  assign_generated_ipv6_cidr_block= false

  tags = {
    Name = "main"
  }
} 

/* output "vpc_id" {
  value = aws_vpc.main.id
  description= "VPC id."
  #Setting an output value as sensitive prevents Terraform from showing its value in plan and apply
  sensitive = false
} */