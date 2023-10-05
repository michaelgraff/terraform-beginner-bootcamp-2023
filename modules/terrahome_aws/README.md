$$ Terrahome AWS

Example

```tf
module "home_cocktails" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.cocktails_public_path
  content_version = var.cocktails.content_version
}
``````


THe public directory expects the following objects to be present:

index.html
error.html
assets
ALl top level files in assets will be copied, but not any subdirectories.