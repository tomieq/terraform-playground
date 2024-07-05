
# sample code to setup aws' ec2 instance

resource "aws_vpc" "tomieq_vpc" {
  cidr_block = "172.22.0.0/16"

  tags = {
    Name    = "tomieq-vpc-1"
    Engine  = "terraform"
    Creator = "tomieq"
  }
}

resource "aws_subnet" "tomieq_subnet" {
  vpc_id            = aws_vpc.tomieq_vpc.id
  cidr_block        = "172.22.10.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name    = "tomieq-subnet-1"
    Engine  = "terraform"
    Creator = "tomieq"
  }
}

resource "aws_network_interface" "tomieq-network-interface" {
  subnet_id   = aws_subnet.tomieq_subnet.id
  private_ips = ["172.22.10.100"]

  tags = {
    Name    = "tomieq-network-interface-1"
    Engine  = "terraform"
    Creator = "tomieq"
  }
}

resource "aws_instance" "tomieq-ec2-instance" {
  ami           = "ami-0fe310dde2a8fdc5c"
  instance_type = "t2.micro"
  network_interface {
    network_interface_id = aws_network_interface.tomieq-network-interface.id
    device_index         = 0
  }
  tags = {
    Name    = "tomieq-micro-instance"
    Engine  = "terraform"
    Creator = "tomieq"
  }
}