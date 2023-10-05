output "bucket_name" {
  description = "The name of the S3 bucket"
  value = module.home_easystars_hosting.bucket_name
}
output "s3_website_endpoint" {
  description = "S3 Static Website Hosting Endpoint"
  value = module.home_easystars_hosting.website_endpoint
}
output "cloudfront_url" {
  description = "The CloudFront distribution domain name"
  value = module.home_easystars_hosting.cloudfront_url
}