resource "aws_elasticache_cluster" "cluster" {
  cluster_id             = var.elasticache_cluster_name-var.elasticache_tag_environment
  apply_immediately      = var.elasticache_apply_immediately
  availability_zones     = ["${split(",", var.elasticache_azs)}"]
  engine                 = var.elasticache_engine
  engine_version         = var.elasticache_engine_version
  maintenance_window     = var.elasticache_maintenance_window
  node_type              = var.elasticache_node_type
  notification_topic_arn = var.elasticache_topic_arn
  num_cache_nodes        = var.elasticache_node_count
  parameter_group_name   = aws_elasticache_parameter_group.default_params.name
  port                   = var.elasticache_port
  subnet_group_name      = aws_elasticache_subnet_group.elasticache_subnets.id
  security_group_ids     = [aws_security_group.elasticache_sg.id]
}