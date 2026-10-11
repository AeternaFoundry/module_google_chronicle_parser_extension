output "chronicle_parser_extensions_id" {
  description = "Map of id values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no id are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_parser_extensions_cbn_snippet" {
  description = "Map of cbn_snippet values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no cbn_snippet are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.cbn_snippet if v.cbn_snippet != null && length(v.cbn_snippet) > 0 }
}
output "chronicle_parser_extensions_create_time" {
  description = "Map of create_time values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no create_time are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "chronicle_parser_extensions_deletion_policy" {
  description = "Map of deletion_policy values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "chronicle_parser_extensions_dynamic_parsing" {
  description = "Map of dynamic_parsing values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no dynamic_parsing are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => one(v.dynamic_parsing) if v.dynamic_parsing != null && length(v.dynamic_parsing) > 0 }
}
output "chronicle_parser_extensions_extension_validation_report" {
  description = "Map of extension_validation_report values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no extension_validation_report are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.extension_validation_report if v.extension_validation_report != null && length(v.extension_validation_report) > 0 }
}
output "chronicle_parser_extensions_field_extractors" {
  description = "Map of field_extractors values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no field_extractors are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => one(v.field_extractors) if v.field_extractors != null && length(v.field_extractors) > 0 }
}
output "chronicle_parser_extensions_instance" {
  description = "Map of instance values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_parser_extensions_last_live_time" {
  description = "Map of last_live_time values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no last_live_time are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.last_live_time if v.last_live_time != null && length(v.last_live_time) > 0 }
}
output "chronicle_parser_extensions_location" {
  description = "Map of location values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no location are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_parser_extensions_log" {
  description = "Map of log values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no log are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.log if v.log != null && length(v.log) > 0 }
}
output "chronicle_parser_extensions_log_type" {
  description = "Map of log_type values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no log_type are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.log_type if v.log_type != null && length(v.log_type) > 0 }
}
output "chronicle_parser_extensions_name" {
  description = "Map of name values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no name are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_parser_extensions_parserextension" {
  description = "Map of parserextension values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no parserextension are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.parserextension if v.parserextension != null && length(v.parserextension) > 0 }
}
output "chronicle_parser_extensions_project" {
  description = "Map of project values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no project are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_parser_extensions_state" {
  description = "Map of state values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no state are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.state if v.state != null && length(v.state) > 0 }
}
output "chronicle_parser_extensions_state_last_changed_time" {
  description = "Map of state_last_changed_time values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no state_last_changed_time are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.state_last_changed_time if v.state_last_changed_time != null && length(v.state_last_changed_time) > 0 }
}
output "chronicle_parser_extensions_validation_report" {
  description = "Map of validation_report values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no validation_report are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.validation_report if v.validation_report != null && length(v.validation_report) > 0 }
}
output "chronicle_parser_extensions_validation_skipped" {
  description = "Map of validation_skipped values across all chronicle_parser_extensions, keyed the same as var.chronicle_parser_extensions except keys with no validation_skipped are omitted"
  value       = { for k, v in google_chronicle_parser_extension.chronicle_parser_extensions : k => v.validation_skipped if v.validation_skipped != null }
}

