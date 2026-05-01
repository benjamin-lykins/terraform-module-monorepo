variables {
  length    = 3
  separator = "."
  prefix    = "demo"
}

run "creates_pet_name" {
  command = apply

  assert {
    condition     = can(regex("^demo\\.", output.name))
    error_message = "Expected the generated name to include the prefix."
  }

  assert {
    condition     = length(split(".", output.name)) == 4
    error_message = "Expected prefix plus 3 random words in the generated name."
  }
}