variable "core_subnets_lookup" {
  description = <<EOT
Map of core_subnets_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - state
    - vcn_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    state          = optional(string)
    vcn_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

