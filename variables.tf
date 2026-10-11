variable "vpclattice_auth_policy_lookup" {
  description = <<EOT
Map of vpclattice_auth_policy_lookup, attributes below
Required:
    - resource_identifier
Optional:
    - policy
    - region
    - state
EOT

  type = map(object({
    resource_identifier = string
    policy              = optional(string)
    region              = optional(string)
    state               = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

