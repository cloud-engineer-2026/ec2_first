# Generate SSH key pair locally
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create key pair in AWS using the public key
resource "aws_key_pair" "ec2_key" {
  key_name   = "my-ec2-key"
  public_key = tls_private_key.ec2_key.public_key_openssh
}

# Save private key to local file (for SSH access)
resource "local_file" "private_key" {
  content              = tls_private_key.ec2_key.private_key_pem
  filename             = "F:\\CloudEngineer2026\\moses\\my-ec2-key.pem"
  file_permission      = "0600"
}

resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ami
  tags = {
    Name = "DockerInstance"
  }
}
