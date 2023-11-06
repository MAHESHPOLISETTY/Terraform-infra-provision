######public_subnet

resource "aws_subnet" "prj2_mahi_pub_sub" {

  vpc_id = aws_vpc.prj2_mahi.id

  cidr_block = "10.0.0.0/28"

  availability_zone = "us-east-1a"

  map_public_ip_on_launch = "true"

  tags = {

    Name = "PRJ2_PUB_SB"


  }
}



