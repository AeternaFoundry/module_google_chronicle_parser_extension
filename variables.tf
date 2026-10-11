variable "chronicle_parser_extensions" {
  description = <<EOT
Map of chronicle_parser_extensions, attributes below
Required:
    - instance
    - location
    - log_type
Optional:
    - cbn_snippet
    - deletion_policy
    - log
    - project
    - validation_skipped
    - dynamic_parsing (block):
        - opted_fields (optional, block):
            - path (optional)
            - sample_value (optional)
    - field_extractors (block):
        - append_repeated_fields (optional)
        - extractors (optional, block):
            - destination_path (optional)
            - field_path (optional)
            - precondition_op (optional)
            - precondition_path (optional)
            - precondition_value (optional)
            - value (optional)
        - log_format (optional)
        - preprocess_config (optional, block):
            - grok_regex (optional)
            - target (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance           = string
    location           = string
    log_type           = string
    cbn_snippet        = optional(string)
    deletion_policy    = optional(string)
    log                = optional(string)
    project            = optional(string)
    validation_skipped = optional(bool)
    dynamic_parsing = optional(object({
      opted_fields = optional(list(object({
        path         = optional(string)
        sample_value = optional(string)
      })))
    }))
    field_extractors = optional(object({
      append_repeated_fields = optional(bool)
      extractors = optional(list(object({
        destination_path   = optional(string)
        field_path         = optional(string)
        precondition_op    = optional(string)
        precondition_path  = optional(string)
        precondition_value = optional(string)
        value              = optional(string)
      })))
      log_format = optional(string)
      preprocess_config = optional(object({
        grok_regex = optional(string)
        target     = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

