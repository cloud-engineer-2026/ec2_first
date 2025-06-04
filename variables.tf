variable "ec2_instance_type" {
  description = "Instance type for the instance"
  type        = string
}

variable "ami" {
  description = "EC2 image for the instance"
  type        = string
}

variable "region_name" {
  description = "Region to create the resources"
  type        = string
}
variable "key_name" {
  type        = string
  description = "KeyPair used by EC2"
  
}

variable "keypair_path" {
  type        = string
  default     = "F:\\CloudEngineer2026\\moses\\Docker.pem"
  description = "KeyPair downloaded path"
}

