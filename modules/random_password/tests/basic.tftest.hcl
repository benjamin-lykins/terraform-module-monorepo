variables {
  length      = 24
  special     = false
  min_special = 0
}

run "creates_password" {
  command = apply

  assert {
    condition     = length(nonsensitive(output.password)) == 24
    error_message = "Expected generated password length to be 24."
  }

  assert {
    condition     = nonsensitive(output.length) == 24
    error_message = "Expected reported password length output to be 24."
  }
}