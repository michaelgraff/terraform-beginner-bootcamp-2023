variable "user_uuid" {
  description = "User UUID"
  type        = string

  validation {
    condition     = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.user_uuid))
    error_message = "Invalid user UUID format. It should be in the format of 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx', where x is a hexadecimal digit."
  }
}
# variable "bucket_name" {
#   description = "The name of the AWS S3 bucket"
#   type        = string

#   validation {
#     condition     = can(regex("^[a-zA-Z0-9.-]{3,63}$", var.bucket_name))
#     error_message = "The bucket name must be between 3 and 63 characters long and can only contain alphanumeric characters, hyphens, and periods."
#   }
# }

variable "public_path" {
  description = "the file path for the public directory"
  type = string
}

variable "content_version" {
  description = "The content version.  Should be a positive integer starting at 1"
  type        = number

  validation {
    condition     = var.content_version >= 1 && ceil(var.content_version) == floor(var.content_version)
    error_message = "Content version must be a positive integer starting at 1."
  }
}