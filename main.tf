data "datadog_team_memberships" "team_memberships_lookup" {
  for_each = var.team_memberships_lookup

  team_id        = each.value.team_id
  exact_match    = each.value.exact_match
  filter_keyword = each.value.filter_keyword
}

