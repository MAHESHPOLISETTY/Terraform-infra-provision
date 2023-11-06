###WEB_SERVER_INSTANCE######

resource "aws_instance" "prj2_mahi_web_instance" {
  ami                    = "ami-0e8a34246278c21e4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.prj2_mahi_pub_sub.id
  key_name               = "prj2"
  count                  = 1
  vpc_security_group_ids = [aws_security_group.http-ssh.id]
  user_data              = file("food.sh")
}


###RDS_SERVER_INSTANCE######

resource "aws_instance" "prj2_mahi_rds_instance" {
  ami                    = "ami-0e8a34246278c21e4"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.prj2_mahi_pvt_sub.id
  key_name               = "prj2"
  count                  = 1
  vpc_security_group_ids = [aws_security_group.prj2_mahi_rds.id]

}


