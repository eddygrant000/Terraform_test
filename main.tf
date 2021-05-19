resource "aws_security_group" "testgroup" {
  name = "testgroup"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "TestServer" {
  ami                         = "ami-0cda377a1b884a1bc"
  instance_type               = "t2.micro"
  key_name                    = "devops"
  associate_public_ip_address = true
  security_groups = [ "testgroup" ]
  tags = {
    "Name" = "WebServer"
  }
}
