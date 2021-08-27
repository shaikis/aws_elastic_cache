variable "elasticache_cluster_name" {}
variable "elasticache_tag_environment" {}
variable "global_vpc_id" {}
variable "global_vpc_subnet_cidr" {}
variable "elasticache_subnets" {}
variable "elasticache_azs" {}
variable "elasticache_topic_arn" {}
variable "elasticache_engine" {
  default     = "redis"
}
variable "elasticache_engine_version" {
  default     = "3.2"
}
variable "elasticache_port" {
  default     = "6379"
}
variable "elasticache_node_type" {
  default     = "cache.t2.small"
}
variable "elasticache_node_count" {
  default     = 1
}
variable "elasticache_maintenance_window" {
  default     = "sun:02:00-sun:04:00"
}
variable "elasticache_param_group_family" {
  default     = "redis3.2"
}
variable "elasticache_apply_immediately" {
  default     = false
}