output "elasticache_cluster_endpoint" {
  value = aws_elasticache_cluster.cluster.configuration_endpoint
}

output "elasticache_cache_nodes" {
  value = aws_elasticache_cluster.cluster.cache_nodes
}

output "hostname" {
  value = aws_elasticache_cluster.cluster.cache_nodes.0.address
}

output "port" {
  value = aws_elasticache_cluster.cluster.cache_nodes.0.port
}

output "endpoint" {
  value = "${join(":", aws_elasticache_cluster.cluster.cache_nodes.0.address, aws_elasticache_cluster.cluster.cache_nodes.0.port)}"
}
