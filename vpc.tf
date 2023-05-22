# Terraform Training VPC
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_classiclink   = var.enable_classiclink

  tags = {
    Name = var.name
  }
}

# Terraform Training Subnets
resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr["fe1"]
  map_public_ip_on_launch = var.public_1_ip
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "public-1"
  }
}


resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr["fe2"]
  map_public_ip_on_launch = var.public_2_ip
  availability_zone       = "eu-west-1b"

  tags = {
    Name = "public-2"
  }
}

resource "aws_subnet" "private-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr["be1"]
  map_public_ip_on_launch = var.private_1_ip
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidr["be2"]
  map_public_ip_on_launch = var.private_2_ip
  availability_zone       = "eu-west-1b"

  tags = {
    Name = "private-2"
  }
}

