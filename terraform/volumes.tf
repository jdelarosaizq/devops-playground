resource "aws_ebs_volume" "neo4j-volume" {
  availability_zone = var.availability_zone[var.environment[terraform.workspace]]
  size              = 1
  tags = {
    Name = "neo4j"
  }
}


output "aws_ebs_volume_neo4j-volume_id" {
  value = aws_ebs_volume.neo4j-volume.id
}
