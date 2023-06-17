variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default	  = "ami-024e6efaf93d85776"
}
