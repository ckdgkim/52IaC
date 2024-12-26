# resource "aws_security_group" "sample-sg-bastion" {
# name = "sample-sg-bastion"
# description = "for bastion server"
# vpc_id = aws_vpc.sample-vpc.id
# tags = {
# Name = "sample-sg-bastion"
# }
# }

# resource "aws_security_group_rule" "sample-sg-bastion-ingress" {
# security_group_id = aws_security_group.sample-sg-bastion.id
# type = "ingress"
# description = "allow all for ssh"
# from_port = 22
# to_port = 22
# protocol = "tcp"
# cidr_blocks = ["0.0.0.0/0"]
# }
# resource "aws_security_group_rule" "sample-sg-bastion-egress" {
# security_group_id = aws_security_group.sample-sg-bastion.id
# type = "egress"
# description = "allow all for all outbound"
# from_port = 0
# to_port = 0
# protocol = "-1"
# cidr_blocks = ["0.0.0.0/0"]
# }

resource "aws_security_group" "sample-sg-elb" {
name = "sample-sg-elb"
description = "for load balancer"
vpc_id = aws_vpc.sample-vpc.id
tags = {
Name = "sample-sg-elb"
}
}

resource "aws_security_group_rule" "sample-sg-elb-ingress" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for http"
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_security_group_rule" "sample-sg-elb-ingress2" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for ssh"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress3" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for https"
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress4" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for http"
from_port = 8080
to_port = 8080
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress6" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for mongDB"
from_port = 27017
to_port = 27017
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress7" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for mysql"
from_port = 3306
to_port = 3306
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress8" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for redis"
from_port = 6379
to_port = 6379
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress9" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for eks-1"
from_port = 30000
to_port = 30000
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress10" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "ingress"
description = "allow all for eks-2"
from_port = 30001
to_port = 30001
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-ingress5" {
  security_group_id = aws_security_group.sample-sg-elb.id
  type              = "ingress"
  description       = "allow SSH and ICMP"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-egress" {
security_group_id = aws_security_group.sample-sg-elb.id
type = "egress"
description = "allow all for eks outbound"
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}