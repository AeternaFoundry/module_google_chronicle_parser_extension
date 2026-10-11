resource "google_chronicle_parser_extension" "chronicle_parser_extensions" {
  for_each = var.chronicle_parser_extensions

  instance           = each.value.instance
  location           = each.value.location
  log_type           = each.value.log_type
  cbn_snippet        = each.value.cbn_snippet
  deletion_policy    = each.value.deletion_policy
  log                = each.value.log
  project            = each.value.project
  validation_skipped = each.value.validation_skipped

  dynamic "dynamic_parsing" {
    for_each = each.value.dynamic_parsing != null ? [each.value.dynamic_parsing] : []
    content {
      dynamic "opted_fields" {
        for_each = dynamic_parsing.value.opted_fields != null ? dynamic_parsing.value.opted_fields : []
        content {
          path         = opted_fields.value.path
          sample_value = opted_fields.value.sample_value
        }
      }
    }
  }

  dynamic "field_extractors" {
    for_each = each.value.field_extractors != null ? [each.value.field_extractors] : []
    content {
      append_repeated_fields = field_extractors.value.append_repeated_fields
      dynamic "extractors" {
        for_each = field_extractors.value.extractors != null ? field_extractors.value.extractors : []
        content {
          destination_path   = extractors.value.destination_path
          field_path         = extractors.value.field_path
          precondition_op    = extractors.value.precondition_op
          precondition_path  = extractors.value.precondition_path
          precondition_value = extractors.value.precondition_value
          value              = extractors.value.value
        }
      }
      log_format = field_extractors.value.log_format
      dynamic "preprocess_config" {
        for_each = field_extractors.value.preprocess_config != null ? [field_extractors.value.preprocess_config] : []
        content {
          grok_regex = preprocess_config.value.grok_regex
          target     = preprocess_config.value.target
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

