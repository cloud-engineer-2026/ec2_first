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
  key-name    = "Docker"
  type        = string
  description = "KeyPair used by EC2"
  
}

variable "keypair_path" {
  type        = string
  default     = "/CloudEngineer2026/moses"
  description = "KeyPair downloaded path"
}

