output "team_memberships_lookup_id" {
  description = "Map of id values across all team_memberships_lookup, keyed the same as var.team_memberships_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_team_memberships.team_memberships_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_memberships_lookup_exact_match" {
  description = "Map of exact_match values across all team_memberships_lookup, keyed the same as var.team_memberships_lookup except keys with no exact_match are omitted"
  value       = { for k, v in data.datadog_team_memberships.team_memberships_lookup : k => v.exact_match if v.exact_match != null }
}
output "team_memberships_lookup_filter_keyword" {
  description = "Map of filter_keyword values across all team_memberships_lookup, keyed the same as var.team_memberships_lookup except keys with no filter_keyword are omitted"
  value       = { for k, v in data.datadog_team_memberships.team_memberships_lookup : k => v.filter_keyword if v.filter_keyword != null && length(v.filter_keyword) > 0 }
}
output "team_memberships_lookup_team_id" {
  description = "Map of team_id values across all team_memberships_lookup, keyed the same as var.team_memberships_lookup except keys with no team_id are omitted"
  value       = { for k, v in data.datadog_team_memberships.team_memberships_lookup : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_memberships_lookup_team_memberships" {
  description = "Map of team_memberships values across all team_memberships_lookup, keyed the same as var.team_memberships_lookup except keys with no team_memberships are omitted"
  value       = { for k, v in data.datadog_team_memberships.team_memberships_lookup : k => v.team_memberships if v.team_memberships != null && length(v.team_memberships) > 0 }
}

