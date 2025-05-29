provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "static_website" {
  bucket = "my-aws-bucket-arunesh"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.static_website.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "public_policy" {
  bucket = aws_s3_bucket.static_website.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicReadGetObject",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.static_website.arn}/*"
      }
    ]
  })
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.static_website.id
  key          = "index.html"
  source       = "${path.module}/index.html"
  content_type = "text/html"
  acl          = "public-read"
}

resource "aws_s3_object" "backend_js" {
  bucket       = aws_s3_bucket.static_website.id
  key          = "backend.js"
  source       = "${path.module}/backend.js"
  content_type = "application/javascript"
  acl          = "public-read"
}

output "website_url" {
  description = "S3 static website endpoint"
  value       = aws_s3_bucket.static_website.website_endpoint
}
