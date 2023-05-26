#security group module
resource "aws_security_group" "example" {
  name        = var.sg_name
  description = "Example security group"

  ingress {
    from_port   = var.ingress_ports[0]
    to_port     = var.ingress_ports[1]
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = var.egress_ports[0]
    to_port     = var.egress_ports[0]
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }
}
