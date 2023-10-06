terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

  cloud {
    organization = "cloudyadvice"
    workspaces {
      name = "terra-house-1"
      }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_easystars_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.easystars.public_path
  content_version = var.easystars.content_version
}

resource "terratowns_home" "home_easystars" {
  name = "Easy Stars All Stars"
  description = <<DESCRIPTION
Easy Star All-Stars is a reggae collective founded in 1997 by Michael Goldwasser,
Eric Smith, Lem Oppenheimer and Remy Gerstein of New York City-based Easy Star Records.
The band is known for its reinterpretations of classic albums in reggae style.
  DESCRIPTION
  domain_name = module.home_easystars_hosting.cloudfront_url
  #domain_name = "abcd1234.cloudfront.net"
  town = "melomaniac-mansion"
  content_version = var.easystars.content_version
}

module "home_cocktails_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.cocktails.public_path
  content_version = var.cocktails.content_version
}

resource "terratowns_home" "home_cocktails" {
  name = "Classic Cocktails"
  description = <<DESCRIPTION
I love classic cocktails from the early 20th Century.  
On this page I highlight a few of my favorites and share recipes.
  DESCRIPTION
  domain_name = module.home_cocktails_hosting.cloudfront_url
  #domain_name = "abcd1234.cloudfront.net"
  town = "cooker-cove"
  content_version = var.cocktails.content_version
}