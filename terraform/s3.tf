resource "aws_s3_bucket" "data" {
  bucket = "data"

  tags = {
    Name         = "data"
    Descriptions = "Holds csv files to feed neo4j"
    Environment  = "dev"
  }
}
