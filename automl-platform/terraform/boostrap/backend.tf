resource "aws_s3_bucket" "csv_data" {
  bucket        = "your-new-csv-bucket-name"
  force_destroy = true

  versioning {
    enabled = true
  }
  
  tags = {
    Name = "CSV Data Bucket"
  }
}
