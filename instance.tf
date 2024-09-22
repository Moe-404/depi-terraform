resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file(var.key_pair)
}

resource "aws_security_group" "public_sg" {
  vpc_id = aws_vpc.depi_dev_vpc.id

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
}

resource "aws_instance" "public_instance_1" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet_1.id
  key_name      = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.public_sg.id]

  tags = {
    Name = "Public-EC2-1"
  }
}

resource "aws_instance" "public_instance_2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet_2.id
  key_name      = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.public_sg.id]

  tags = {
    Name = "Public-EC2-2"
  }
}