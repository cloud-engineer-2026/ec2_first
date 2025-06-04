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
