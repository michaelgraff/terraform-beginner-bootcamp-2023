terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  # cloud {
  #   organization = "cloudyadvice"

  # workspaces {
  #   name = "terra-house-1"
  # }
}

provider "terratowns" {
  endpoint = "http://localhost:4567/api"
  user_uuid = "e328f4ab-b99f-421c-84c9-4ccea042c7d1"
  token = "9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   user_uuid = var.user_uuid
#   bucket_name = var.bucket_name
#   index_html_filepath = var.index_html_filepath
#   error_html_filepath = var.error_html_filepath
#   content_version = var.content_version
#   assets_path = var.assets_path
# }

resource "terratowns_home" "home" {
  name = "Easy Stars All Stars"
  description = <<DESCRIPTION
Easy Star All-Stars is a reggae collective founded in 1997 by Michael Goldwasser,
Eric Smith, Lem Oppenheimer and Remy Gerstein of New York City-based Easy Star Records.
The band is known for its reinterpretations of classic albums in reggae style.
Their first album, released in 2003, was Dub Side of the Moon, an interpretation of Pink Floyd's 1973 album Dark Side of the Moon.
  DESCRIPTION
  # domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "abcd3fg.cloudfront.net"
  town = "melomaniac-mansion"
  content_version = 1
}