data "aws_vpclattice_auth_policy" "vpclattice_auth_policy_lookup" {
  for_each = var.vpclattice_auth_policy_lookup

  resource_identifier = each.value.resource_identifier
  policy              = each.value.policy
  region              = each.value.region
  state               = each.value.state
}

