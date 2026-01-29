module "resource_groups" {
  source   = "git::https://github.com/iamminakshi/project_module"

  for_each = var.resource_groups

  resource_group_name = each.value.name
  environment = var.environment
 location            = var.location
  tags                = var.tags
}
