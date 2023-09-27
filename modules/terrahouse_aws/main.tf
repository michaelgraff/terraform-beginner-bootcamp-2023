terraform {
    required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

resource "aws_s3_bucket" "website_bucket" {
   bucket = var.bucket_name

   tags = {
     UserUuid    = "var.user_uuid"
     Environment = "Dev"
   }
} 

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration
resource "aws_s3_bucket_website_configuration" "website_configuration" {
  bucket = aws_s3_bucket.website_bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object
resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.website_bucket.bucket
  key          = "index.html"
  source       = "${path.root}/public/index.html" # Local path to your index.html file
  content_type = "text/html"
  # etag         = filemd5("path/to/your/index.html") # Compute the ETag based on the file
}