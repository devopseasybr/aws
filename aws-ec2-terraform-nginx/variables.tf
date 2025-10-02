variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID"
  # Exemplo para us-east-1
  default = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  description = "Nome da chave SSH"
  default     = "terraform-key"
}

variable "public_key_path" {
  description = "Caminho para a chave pública SSH"
  default     = "~/.ssh/id_rsa.pub"
}
