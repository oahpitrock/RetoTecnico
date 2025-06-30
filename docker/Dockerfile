FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# -----------------------------
# Requisitos básicos
# -----------------------------
RUN  apt-get update && apt-get install -y \
    wget \
    curl \
    gnupg \
    unzip \
    software-properties-common \
    apt-transport-https \
    ca-certificates

# -----------------------------
# Repositorio de .NET
# -----------------------------
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

# -----------------------------
# Repositorio de VS Code (opcional)
# -----------------------------
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/ && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list && \
    rm microsoft.gpg

# -----------------------------
# Instalación de herramientas
# -----------------------------
RUN  apt-get update && apt-get install -y \
    git \
    openjdk-11-jre \
    maven \
    postgresql \
    apache2 \
    dotnet-sdk-6.0 \
    code \
    && apt-get clean

# -----------------------------
# Copiar página de prueba
# -----------------------------
COPY apache-hola-mundo/ /var/www/html/

# -----------------------------
# Ejecutar Apache por defecto
# -----------------------------
CMD ["apachectl", "-D", "FOREGROUND"]
