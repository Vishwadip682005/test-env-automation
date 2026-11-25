variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "my_ip" {
  description = "Your public IP, used to allow SSH"
  type        = string
}

variable "public_key_path" {
  default = "~/.ssh/test-env-key.pub"
}
