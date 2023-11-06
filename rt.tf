###PUB_RT###

resource "aws_route_table" "prj2_mahi_pub_rt" {

  vpc_id = aws_vpc.prj2_mahi.id

  tags = {
    Name = "PRJ2_PUB_RT"
  }
}

output "aws_route_table_public_ids" {
  value = aws_route_table.prj2_mahi_pub_rt.id
}

######## attaching public_rt with igw #########


resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_route_table.prj2_mahi_pub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.prj2_mahi_igw.id
}


####PVT_RT#### it will be default#####

resource "aws_route_table" "prj2_mahi_pvt_rt" {

  vpc_id = aws_vpc.prj2_mahi.id

  tags = {
    Name = "PRJ2_PVT_RT"
  }
}

