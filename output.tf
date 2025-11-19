output "final_message" {
  description = "The final message displayed by the pipeline"
  value       = "Successfully executed the 'hello world' process with message: ${var.message}"
}
