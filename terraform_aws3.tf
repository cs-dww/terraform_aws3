provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  token      = var.AWS_TOKEN
  region     = var.AWS_REGION
}

resource "aws_security_group" "webserver_sg" {

  name = "Ports 22"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "dww" {
  ami                    = var.AMIS[var.AWS_REGION]
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  key_name               = "mykey"
  count                  = 3
  tags = {
    Name = "Ubuntu-Installation"
  }
#  provisioner "file" {
#    source = "script.sh"
#    destination = "/tmp/script.sh"
#  }
}

resource "aws_instance" "dwwamz" {
  ami                     = "ami-04902260ca3d33422"
  instance_type           = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  key_name                = "mykey"
  count                   = 2
  tags = {
    Name = "amazon-linux-installation"
  }
}

#provisioner "remote-exec" {
#    inline = [
#      "chmod +x /tmp/script.sh",
#      "sudo sed -e -e 's/\r$//' /tmp/script.s.h", #remove the spurious CR characters
#      "sudo /tmp/script.sh",
#   ]
#  }
#  connection {
#    host        = coalesce(self.public_ip, self.private_ip)
#    type        = "ssh"
#    user        = var.INSTANCE_USERNAME
#    private_key = file(var.PATH_TO_PRIVATE_KEY)
#  }
#}
#output "my-public-ip" {
#  value = aws_instance.dww.public_ip
#}

