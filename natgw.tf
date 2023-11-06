####CREATING_ELASTIC_IP#####

resource "aws_eip" "prj2_mahi_eip" {

  instance = "" ##we can keep it empty as of now if we dont want to associate it

}


###############CREATING_NAT_GATE_WAY############


resource "aws_nat_gateway" "prj2_mahi_nat" {

  allocation_id = aws_eip.prj2_mahi_eip.id

  subnet_id = aws_subnet.prj2_mahi_pub_sub.id
}


######## attaching pvt_rt with NAT_GATE_WAY #########


resource "aws_route" "nat_internet_gateway" {
  route_table_id         = aws_route_table.prj2_mahi_pvt_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.prj2_mahi_nat.id

}


