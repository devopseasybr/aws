output "instance_public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.web.public_ip
}

output "nginx_url" {
  description = "URL para acessar a página do NGINX"
  value       = "http://${aws_instance.web.public_ip}"
}
