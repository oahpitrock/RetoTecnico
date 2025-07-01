# Variables para los parámetros de la instancia
variable "ami_id" {
  description = "ami-0d53d72369335a9d6"
  type        = string
  default     = "ami-0d53d72369335a9d6"
}

variable "instance_type" {
  description = "t2.micro"
  type        = string
  default     = "t2.micro"  # Instancia por defecto
}

variable "key_name" {
  description = "Demo-duty"
  type        = string
  default     = "Demo-duty"
}

variable "subnet_id" {
  description = "subnet-f8fbfca3"
  type        = string
  default     = "subnet-f8fbfca3"
}

variable "vpc_id" {
  description = "vpc-88a199ef"
  type        = string
  default     = "vpc-88a199ef"
}

variable "disk_size" {
  description = "Tamaño del disco en GB"
  type        = number
  default     = 20  # Tamaño del disco en GB por defecto
}

variable "allowed_ip" {
  description = "IP permitida para acceso SSH"
  type        = string
}
