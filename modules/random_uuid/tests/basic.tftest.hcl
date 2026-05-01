run "creates_uuid" {
  command = apply

  assert {
    condition     = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", output.uuid))
    error_message = "Expected output UUID to match canonical UUID format."
  }
}