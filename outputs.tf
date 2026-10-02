output "pipeline_name" {
  description = "CodePipeline name."
  value       = aws_codepipeline.this.name
}

output "ecr_repository_url" {
  description = "ECR repository URL."
  value       = aws_ecr_repository.app.repository_url
}
