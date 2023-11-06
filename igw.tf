################IGW-PRJ2############

resource "aws_internet_gateway" "prj2_mahi_igw" {

  vpc_id = aws_vpc.prj2_mahi.id

  tags = {

    Name = "PRJ2_IGW"

  }
}


