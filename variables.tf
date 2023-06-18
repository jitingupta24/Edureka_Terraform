variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default	  = "ami-024e6efaf93d85776"
}

variable "access_key" {
  description = "access key"
  type        = string

}

variable "secret_key" {
  description = "aecret Key"
  type        = string
  
}
