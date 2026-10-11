resource "oci_opsi_operations_insights_private_endpoint" "opsi_operations_insights_private_endpoints" {
  for_each = var.opsi_operations_insights_private_endpoints

  compartment_id                  = each.value.compartment_id
  display_name                    = each.value.display_name
  is_used_for_rac_dbs             = each.value.is_used_for_rac_dbs
  subnet_id                       = each.value.subnet_id
  vcn_id                          = each.value.vcn_id
  defined_tags                    = each.value.defined_tags
  description                     = each.value.description
  freeform_tags                   = each.value.freeform_tags
  nsg_ids                         = each.value.nsg_ids
  private_endpoint_status_details = each.value.private_endpoint_status_details
  security_attributes             = each.value.security_attributes

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

