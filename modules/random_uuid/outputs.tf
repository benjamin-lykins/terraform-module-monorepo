output "uuid" {
  description = "Generated UUID value."
  value       = random_uuid.this.result
}