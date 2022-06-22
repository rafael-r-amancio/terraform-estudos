
// Especificação do provedor
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.19.0"
    }
  }
  required_version = ">= 1.2.0"
}

// Configuração do provedor
provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira Instancia"
  }
}