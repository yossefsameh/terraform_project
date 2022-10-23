resource "aws_elasticache_cluster" "my-redis" {
  cluster_id           = "redisid"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  apply_immediately = true
  subnet_group_name = aws_elasticache_subnet_group.redis-sub-grp.id
  }
resource "aws_elasticache_subnet_group" "redis-sub-grp" {
  name       = "tf-test-cache-subnet-grp"
  subnet_ids = [module.mynetwork.prisub1_id, module.mynetwork.prisub2_id]
   tags = {
    Name = "redis-sub-group"
  }
}
