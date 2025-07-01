#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

# Login to DockerHub si es necesario
# docker login -u ${{ secrets.AWS_ACCESS_KEY_ID }} -p ${{ secrets.AWS_SECRET_ACCESS_KEY }}

# Pull y ejecutar la imagen (ajústalo a tu imagen personalizada)
docker run -d -p 80:80 ${{ vars.IMAGE_NAME }}/custom-image:latest
