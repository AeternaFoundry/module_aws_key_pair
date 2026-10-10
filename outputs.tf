output "key_pairs_id" {
  description = "Map of id values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_pairs_arn" {
  description = "Map of arn values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "key_pairs_fingerprint" {
  description = "Map of fingerprint values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "key_pairs_key_name" {
  description = "Map of key_name values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "key_pairs_key_name_prefix" {
  description = "Map of key_name_prefix values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.key_name_prefix if v.key_name_prefix != null && length(v.key_name_prefix) > 0 }
}
output "key_pairs_key_pair_id" {
  description = "Map of key_pair_id values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.key_pair_id if v.key_pair_id != null && length(v.key_pair_id) > 0 }
}
output "key_pairs_key_type" {
  description = "Map of key_type values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.key_type if v.key_type != null && length(v.key_type) > 0 }
}
output "key_pairs_public_key" {
  description = "Map of public_key values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
}
output "key_pairs_region" {
  description = "Map of region values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "key_pairs_tags" {
  description = "Map of tags values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "key_pairs_tags_all" {
  description = "Map of tags_all values across all key_pairs, keyed the same as var.key_pairs"
  value       = { for k, v in aws_key_pair.key_pairs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

