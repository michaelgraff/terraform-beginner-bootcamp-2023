output "bucket_name" {
  description = "The name of the S3 bucket"
  value = module.terrahouse_aws.bucket_name
}

output "s3_website_endpoint" {
  description = "S3 Static Website Hosting Endpoint"
  value = module.terrahouse_aws.website_endpoint
}

locals {
  root_path = path.root
}

output "root_path" {
  value = local.root_path
}