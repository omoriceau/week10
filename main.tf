resource "aws_security_group" "web-sg" {
  name = "staging-web-sg"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    # Restrict access to a specific IP or CIDR range
    cidr_blocks = ["203.0.113.25/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
