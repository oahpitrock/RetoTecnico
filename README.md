# RetoTecnico

Este proyecto crea una infraestructura en AWS que incluye:

Una instancia EC2 que ejecuta un contenedor Docker personalizado.

Una base de datos PostgreSQL en RDS.

Reglas de seguridad que restringen el acceso SSH.

Un contenedor Docker que incluye herramientas como Git, Maven, PostgreSQL, Apache, Java y .NET.

Despliegue automatizado usando GitHub Actions.

El Terraform State es enviado a un Backend que ya esta creado en aws (s3Bucket)

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

# Terraform State

El backend debe existir previamente (el bucket S3 y la tabla DynamoDB deben estar creados antes del terraform init).
El pipeline debe tener permisos para acceder al bucket y a la tabla (mediante las variables AWS_ACCESS_KEY_ID y AWS_SECRET_ACCESS_KEY).


