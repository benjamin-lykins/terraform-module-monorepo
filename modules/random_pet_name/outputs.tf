output "name" {
  description = "Generated pet name."
  value       = random_pet.this.id
}