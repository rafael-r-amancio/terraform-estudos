
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
  ami           = "ami-0ddf424f81ddb0720"
  instance_type = "t2.micro"
  key_name = "iac-alura"
#   user_data = <<-EOF
#                     #!/bin/bash
#                     cd /home/ubuntu
#                     echo "<h1>Feito com Terraform</h1>" > index.html
#                     nohup busybox httpd -f -p 8080 &
#                 EOF

  tags = {
    Name = "Terraform Ansible Python"
  }
}