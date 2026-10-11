variable "team_memberships_lookup" {
  description = <<EOT
Map of team_memberships_lookup, attributes below
Required:
    - team_id
Optional:
    - exact_match
    - filter_keyword
EOT

  type = map(object({
    team_id        = string
    exact_match    = optional(bool)
    filter_keyword = optional(string)
  }))
}

