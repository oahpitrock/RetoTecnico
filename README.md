# RetoTecnico

Este proyecto crea una infraestructura en AWS que incluye:

Una instancia EC2 que ejecuta un contenedor Docker personalizado.

Una base de datos PostgreSQL en RDS.

Reglas de seguridad que restringen el acceso SSH.

Un contenedor Docker que incluye herramientas como Git, Maven, PostgreSQL, Apache, Java y .NET.

Despliegue automatizado usando GitHub Actions.

# Requisitos Previos 

Cuenta de AWS

Cuenta de DockerHub

Clave SSH pública (~/.ssh/id_rsa.pub)

Repositorio en GitHub

# Secretos de GitHub

Nombre

AWS_ACCESS_KEY_ID	/
AWS_SECRET_ACCESS_KEY / 
DOCKERHUB_USERNAME /
DOCKERHUB_TOKEN / 
