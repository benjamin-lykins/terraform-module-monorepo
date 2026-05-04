output "password" {
  description = "The generated password."
  value       = random_password.this.result
  sensitive   = true
}

output "length" {
  description = "Length of the generated password."
  value       = length(random_password.this.result)
  sensitive   = true
}