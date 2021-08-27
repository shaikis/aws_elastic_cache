resource "aws_security_group" "elasticache_sg" {
  name        = "${var.elasticache_cluster_name}-${var.elasticache_tag_environment}-sg"
  description = "Security group for cache cluster ${var.elasticache_cluster_name}"
  vpc_id      = var.global_vpc_id
}

resource "aws_security_group_rule" "permit_ingress_elasticache" {
  type        = "ingress"
  from_port   = var.elasticache_port
  to_port     = var.elasticache_port
  protocol    = "tcp"
  cidr_blocks = [split(",", var.global_vpc_subnet_cidr)]

  security_group_id = aws_security_group.elasticache_sg.id
}

resource "aws_security_group_rule" "permit_egress_all" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.elasticache_sg.id
}
