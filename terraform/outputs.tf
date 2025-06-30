output "instance_public_ip" {
  value = aws_instance.docker_host.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}
