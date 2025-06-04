resource "aws_key_pair" "keypair" {
  key_name   = var.key_name
  public_key = tls_private_key.private_key.public_key_openssh

  # Download keypair pem file to keypair path on local
  provisioner "local-exec" {
    command = "echo '${tls_private_key.private_key.private_key_pem}' > ${var.keypair_path}/${var.key_name}.pem" #; chmod 400 ${var.keypair_path}/${var.key_name}.pem"
    interpreter = ["PowerShell", "-Command"]
  }
  tags = var.tags
}

resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ami
  tags = {
    Name = "DockerInstance"
  }
}
