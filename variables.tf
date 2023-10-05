variable "teacherseat_user_uuid" {
  description = "User UUID"
  type        = string
}

variable "terratowns_access_token" {
  description = "the access token for TerraTowns"
  type        = string
}

variable "terratowns_endpoint" {
  description = "the api endpoint for Terratowns"
  type        = string
}

# variable "content_version" {
#   description = "The content version.  Should be a positive integer starting at 1"
#   type        = number
# }

variable "easystars" {
  type = object({
    public_path = string
    content_version = number
  })
}

variable "cocktails" {
  type = object({
    public_path = string
    content_version = number
  })
}