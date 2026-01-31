provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_vm" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = "devops"

  vpc_security_group_ids = [aws_security_group.allow_web.id]

  tags = {
    Name = "DevOps-Assessment"
  }
}

resource "aws_security_group" "allow_web" {
  name = "allow_web"

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

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
