resource "null_resource" "hello_world_trigger" {
  // This resource type is a placeholder to run a local command.
  // It doesn't create any actual infrastructure.

  provisioner "local-exec" {
    command = "echo '${var.message}'"
    // Triggers a new run every time the message changes.
    triggers = {
      message_trigger = var.message
    }
  }
}
