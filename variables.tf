variable "key_pairs" {
  description = <<EOT
Map of key_pairs, attributes below
Required:
    - public_key
Optional:
    - key_name
    - key_name_prefix
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    public_key      = string
    key_name        = optional(string)
    key_name_prefix = optional(string)
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_pairs : (
        v.key_name == null || (length(v.key_name) >= 0 && length(v.key_name) <= 255)
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

