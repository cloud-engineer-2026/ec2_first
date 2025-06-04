resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ami
  keypair_path  = var.keypair_path
  tags = {
    Name = "DockerInstance"
  }
}
