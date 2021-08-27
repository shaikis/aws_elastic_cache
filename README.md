# aws_elastic_cache
building Radis cluster
```
module "elastic_cache_redis" {
    source = git@github.com:hashicorp/terraform-elasticache-example.git"
    elasticache_cluster_name = "my-redis-cluster"
    elasticache_tag_environment = "dev"
    global_vpc_id = "vpc-123"
    global_vpc_subnet_cidr = "10.111.123.0/22"
    elasticache_subnets= "subnet-a, subnet-b"
    elasticache_azs = "eu-west-1a, eu-west-1b"
    elasticache_topic_arn = "arn::..etc" // notification arn here.
}
```
