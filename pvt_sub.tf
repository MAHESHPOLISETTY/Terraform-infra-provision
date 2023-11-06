######private_subnet#########

resource "aws_subnet" "prj2_mahi_pvt_sub" {

  vpc_id = aws_vpc.prj2_mahi.id

  cidr_block = "10.0.0.16/28"

  availability_zone = "us-east-1b"

  map_public_ip_on_launch = "false"

  tags = {

    Name = "PRJ2_PVT_SB"


  }
}

