variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "example-security-group"
}

variable "ingress_ports" {
  description = "List of ingress ports"
  type        = list(number)
  default     = [80, 443]
}

variable "egress_ports" {
  description = "List of egress ports"
  type        = list(number)
  default     = [0]
}

variable "cidr_blocks" {
  description = "List of CIDR blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
