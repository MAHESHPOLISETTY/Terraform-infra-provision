###SECURITY GROUP 22,80#######

resource "aws_security_group" "http-ssh" {
  name        = "allow_http_ssh"
  description = "Allow ssh_ssh"
  vpc_id      = aws_vpc.prj2_mahi.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "http_ssh"
  }
}
