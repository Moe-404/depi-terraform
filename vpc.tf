resource "aws_vpc" "depi_dev_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "Depi-Dev-VPC"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.depi_dev_vpc.id
  cidr_block = var.public_subnet_1_cidr
  availability_zone = var.avaliability_zone_1

  tags = {
    Name = "Depi-Dev-Public-Subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.depi_dev_vpc.id
  cidr_block = var.public_subnet_2_cidr
  availability_zone = var.avaliability_zone_2

  tags = {
    Name = "Depi-Dev-Public-Subnet-2"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.depi_dev_vpc.id
  cidr_block = var.private_subnet_1_cidr
  availability_zone = var.avaliability_zone_1
  
  tags = {
        Name = "Depi-Dev-Private-Subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.depi_dev_vpc.id
  cidr_block = var.private_subnet_2_cidr
  availability_zone = var.avaliability_zone_2
  
  tags = {
        Name = "Depi-Dev-Private-Subnet-2"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.depi_dev_vpc.id

  tags = {
    Name = "depi-dev-igw"
  }
}