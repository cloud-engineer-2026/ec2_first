resource "aws_instance" "Docker_Instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_image
}
