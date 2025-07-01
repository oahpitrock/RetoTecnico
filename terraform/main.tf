provider "aws" {
  region = "us-east-1"
}



resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.allowed_ip}/32"]  # <- cámbiala
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

resource "aws_instance" "docker_host" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  security_groups = [aws_security_group.ec2_sg.name]

# Configuración para el disco adicional
  root_block_device {
    volume_size = var.disk_size  # Tamaño del disco en GB
  }

  user_data = file("scripts/user-data.sh")

  tags = {
    Name = "docker-host"
  }
}

resource "aws_db_instance" "postgres" {
  identifier         = "terraform-postgres"
  engine             = "postgres"
  instance_class     = "db.t3.micro"
  allocated_storage  = 20
  username           = "postgres"
  password           = "MyPostgres123"
  publicly_accessible = true
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
}
