variable "opsi_operations_insights_private_endpoints" {
  description = <<EOT
Map of opsi_operations_insights_private_endpoints, attributes below
Required:
    - compartment_id
    - display_name
    - is_used_for_rac_dbs
    - subnet_id
    - vcn_id
Optional:
    - defined_tags
    - description
    - freeform_tags
    - nsg_ids
    - private_endpoint_status_details
    - security_attributes
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                  = string
    display_name                    = string
    is_used_for_rac_dbs             = bool
    subnet_id                       = string
    vcn_id                          = string
    defined_tags                    = optional(map(string))
    description                     = optional(string)
    freeform_tags                   = optional(map(string))
    nsg_ids                         = optional(set(string))
    private_endpoint_status_details = optional(string)
    security_attributes             = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

