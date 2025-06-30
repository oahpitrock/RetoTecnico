#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

# Login to DockerHub si es necesario
# docker login -u TU_USUARIO -p TU_PASSWORD

# Pull y ejecutar la imagen (ajústalo a tu imagen personalizada)
docker run -d -p 80:80 your-dockerhub-user/custom-image:latest
