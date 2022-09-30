resource "aws_s3_bucket" "module-buc" {
  bucket   = var.bucketName
  tags = {
    Name    = var.bucketName
    Owner   = "Priyam"
    Purpose = "Practice"
  }
}

resource "aws_s3_bucket_acl" "mod-bucket-acl" {
  bucket = aws_s3_bucket.module-buc.id
  acl    = var.acl-value
}