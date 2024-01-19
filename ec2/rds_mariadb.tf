resource "aws_db_subnet_group" "wp-db-subnet-group" {
  name = "wp-db-subnet-group"
  subnet_ids = [aws_subnet.wp-data-subnet-1a.id, aws_subnet.wp-data-subnet-1b.id]
}

resource "aws_db_instance" "wp-mariadb" {
	engine = "mariadb"
	engine_version = "10.6.14"
	instance_class = "db.t3.micro"
	

	identifier = "wordpress"
	username = "wordpress"
	password = "wordpress"

	storage_type = "gp2"
	allocated_storage = 20

	db_subnet_group_name = aws_db_subnet_group.wp-db-subnet-group.name
	vpc_security_group_ids = [aws_security_group.wp-data-sg.id]
	multi_az = false
	publicly_accessible = false

	db_name = "wordpress"
	
	skip_final_snapshot = true
	backup_retention_period = 0
	apply_immediately = true
}