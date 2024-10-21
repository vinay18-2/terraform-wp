# Creating the VPC
resource "aws_vpc" "vinayvpc" {
  cidr_block       = var.vinayvpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "vinayvpc"
  }
}
