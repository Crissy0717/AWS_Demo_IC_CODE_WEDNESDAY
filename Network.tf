# network section 

# "aws_vpc" "development-vpc"
resource "aws_vpc" "development-vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags = {
    Name = "${environment}-VPC"
  }
}

# "aws_subnet" "public-subnet-1"
resource "aws_subnet" "public-subnet-1" {
  cidr_block        = "${var.public_subnet_1_cidr}"
  vpc_id            = "${aws_vpc.development-vpc.id}"
  availability_zone = "${var.region}a"
  tags = {
    Name = "${environment}-VPC-public-Subnet-1"
  }
}
# "aws_subnet" "public-subnet-2"


# "aws_subnet" "public-subnet-3"


# "aws_route_table" "public-route-table"


# "aws_route_table_association" "public-route-1-association"


# "aws_route_table_association" "public-route-2-association"


# "aws_route_table_association" "public-route-3-association"


# "aws_subnet" "private-subnet-1" 



# "aws_subnet" "private-subnet-2"



# "aws_subnet" "private-subnet-3"


# "aws_route_table" "private-route-table"


# "aws_route_table_association" "private-route-1-association"


# "aws_route_table_association" "private-route-2-association" 


# "aws_route_table_association" "private-route-3-association"


# "aws_eip" "elastic-ip-for-nat-gw"


# "aws_nat_gateway" "nat-gw"


# "aws_route" "nat-gw-route"


# "aws_internet_gateway" "development-igw"

# "aws_route" "public-internet-igw-route"