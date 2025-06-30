FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    wget \
    curl \
    unzip \
    gnupg \
    software-properties-common \
    openjdk-11-jre \
    maven \
    postgresql \
    apache2 \
    dotnet-sdk-6.0 \
    code \
    && apt-get clean

COPY apache-hola-mundo/ /var/www/html/
RUN systemctl enable apache2

CMD ["apachectl", "-D", "FOREGROUND"]
