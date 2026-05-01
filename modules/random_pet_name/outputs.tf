output "name" {
  description = "The generated random pet name string."
  value       = random_pet.this.id
}