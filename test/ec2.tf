resource "aws_instance" "EC2PUB-az-a1" {
  ami = "ami-0f1e61a80c7ab943e"
  instance_type = "t2.micro"
  key_name      = "qwe"
  associate_public_ip_address = true # 퍼블릭 IP 자동 할당
  subnet_id = aws_subnet.sample-subnet-public01.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]

  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "EC2PUB-az-a1"
    }
  }
  tags = {
    Name = "EC2PUB-az-a1"
  }
}

resource "aws_instance" "EC2PUB-az-c1" {
  ami = "ami-0f1e61a80c7ab943e" 
  instance_type = "t2.micro"
  key_name      = "qwe"
  associate_public_ip_address = true 
  subnet_id = aws_subnet.sample-subnet-public02.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]

  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "EC2PUB-az-c1"
    }
  }

  tags = {
    Name = "EC2PUB-az-c1"
  }
}

resource "aws_instance" "EC2private-az-a1" {
  ami = "ami-0f1e61a80c7ab943e" 
  instance_type = "t3.small"
  key_name      = "qwe"
  subnet_id = aws_subnet.sample-subnet-private01.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]
  

  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "EC2private-az-a1"
    }
  }

  tags = {
    Name = "EC2private-az-a1"
  }
}

resource "aws_instance" "EC2private-az-c1" {
  ami = "ami-0f1e61a80c7ab943e" 
  instance_type = "t2.micro"
  key_name      = "qwe"
  subnet_id = aws_subnet.sample-subnet-private02.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]

  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "EC2private-az-c1"
    }
  }

  tags = {
    Name = "EC2private-az-c1"
  }
}