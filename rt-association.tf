#### pub_rt with pub_sub ######

resource "aws_route_table_association" "prj2_mahi_pub_rt_ass" {

  subnet_id = aws_subnet.prj2_mahi_pub_sub.id

  route_table_id = aws_route_table.prj2_mahi_pub_rt.id

}

##### pvt_rt with pvt_sub #####

resource "aws_route_table_association" "prj2_mahi_pvt_rt_ass" {

  subnet_id = aws_subnet.prj2_mahi_pvt_sub.id

  route_table_id = aws_route_table.prj2_mahi_pvt_rt.id

}

