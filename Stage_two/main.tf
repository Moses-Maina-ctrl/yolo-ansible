provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "app" {
    ami = "ami-0cd59ecaf368e5ccf"
    instance_type = "t2-micro"
    key_name = var.key_name
    security_groups = [aws_security_group.app_sg.name]

    tags ={
        Name = "Yolo"
    }
    provisioner "local-exec" {
        command = "ansible-playbook -u ubuntu -i ${self.private_ip}, --private-key ${var.private_key_path} playbook.yml"
    }
}

resource "aws_security_group" "app_sg" {
    name = "app_sg"
    description = "Security group for the EC2 instances"

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
        from_port   = -1
        to_port     = -1
        protocol    = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "app_sg"
    }
}
