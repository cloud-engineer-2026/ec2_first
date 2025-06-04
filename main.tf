resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "my-ec2-key"
  public_key = tls_private_key.ec2_key.public_key_openssh
}

resource "local_file" "private_key_pem" {
  content         = tls_private_key.ec2_key.private_key_pem
  filename        = "/Users/mmv0616/Documents/my-ec2-key.pem" # or your desired path
  file_permission = "0600"
}

resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ami
  tags = {
    Name = "DockerInstance"
  }
}
