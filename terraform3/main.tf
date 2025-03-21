provider "aws" {
  access_key = "access key"
  secret_key = "screate key"
  region     = "eu-central-1"
}

resource "aws_key_pair" "terraform_ec2_key" {
  key_name   = "terraform_ec2_key"
  public_key = file("terraform_ec2_key.pub")
}

resource "aws_security_group" "example" {
  name = "security-group"

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

resource "aws_instance" "ourfirst" {
  ami                    = "ami-07eef52105e8a2059"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.terraform_ec2_key.key_name
  vpc_security_group_ids = [aws_security_group.example.id]

  tags = {
    Name = "Europe-server"
  }

  user_data = <<-EOF
#!/bin/bash
sudo apt update -y 
sudo apt install apache2 -y 
sudo apt install zip -y
sudo systemctl start apache2
sudo systemctl enable apache2 
cd /var/www/html/
sudo rm index.html
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page292/picstudio.zip
sudo unzip picstudio.zip
cd picstudio-html
sudo cp -r * /var/www/html/
EOF

  }
