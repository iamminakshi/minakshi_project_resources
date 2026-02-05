variable "location" {
  description = "Azure region where resource groups will be created"
  type        = string
}


variable "environment" {
  description = "Environment for all resource groups"
  type        = string
  default     = "dev"
}

variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    name = string
    tags = optional(map(string))  
  }))
}
variable "tags" {
  description = "The tags associated with the resource group"
  type        = map(string)
  default     = {}
}

