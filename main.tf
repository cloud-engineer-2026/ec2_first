resource "aws_key_pair" "generated_key" {
 key_name         = var.key_name
 keypair_path     = var.keypair_path
}

resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ami
  tags = {
    Name = "DockerInstance"
  }
}
