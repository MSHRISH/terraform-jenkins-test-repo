# Configure AWS provider
provider "aws" {
  region = "us-east-1"
}


# Create an S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "shrish-tf-bucket"
}

output "s3-bucket-id" {
value ="Created Bucket ${aws_s3_bucket.bucket.id}"
}