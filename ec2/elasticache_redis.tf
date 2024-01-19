resource "aws_elasticache_subnet_group" "wp-elasticache-subnet-group" {
  name = "wp-elasticache-subnet-group"
  subnet_ids = [aws_subnet.wp-data-subnet-1a.id, aws_subnet.wp-data-subnet-1b.id]
}

resource "aws_elasticache_cluster" "wp-redis" {
  cluster_id = "wp-redis"
  engine = "redis"
  engine_version = "7.1"
  node_type = "cache.t2.micro"
  num_cache_nodes = 1
  parameter_group_name = "default.redis7"
  subnet_group_name = aws_elasticache_subnet_group.wp-elasticache-subnet-group.name
  port = 6379
  security_group_ids = [aws_security_group.wp-data-sg.id]

  # advanced
  # ...
}