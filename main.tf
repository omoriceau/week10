resource "aws_security_group" "web-sg" {
  name = "staging-web-sg"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.25/32"] # your specific allowed IP
  }

  # restrict egress to only what is needed
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["203.0.113.25/32"] # or another specific destination
  }
}
