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
  key_name    = "Docker.pem"
}

variable "keypair_path" {
  type        = string
  default     = "/Users/MMV0616/moses"
  description = "KeyPair downloaded path"
}
