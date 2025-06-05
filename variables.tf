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
  default     = "/Users/MMV0616/moses"
  description = "KeyPair downloaded path"
}
variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {}
}

