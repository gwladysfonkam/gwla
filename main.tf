# Create VPC
resource "aws_vpc" "custom_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

# Create public subnets
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.custom_vpc.id
  cidr_block = var.pubsub_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = var.public_subnet
  }
}
# Create private subnets
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.custom_vpc.id
  cidr_block = var.privsub_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = var.private_subnet
  }
}
# Create Internet Gateway
resource "aws_internet_gateway" "custom_igw" {
  vpc_id = aws_vpc.custom_vpc.id
  tags = {
    Name = var.igw
  }
}