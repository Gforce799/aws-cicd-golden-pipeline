variable "aws_region" {
  description = "AWS region used for primary resources."
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Short workload name used for resource naming."
  type        = string
  default     = "cicd-golden-pipeline"

  validation {
    condition     = can(regex("^[a-z0-9-]{3,32}$", var.name))
    error_message = "Use 3-32 lowercase letters, numbers, and hyphens."
  }
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "stage", "prod"], var.environment)
    error_message = "Environment must be dev, test, stage, or prod."
  }
}

variable "tags" {
  description = "Additional tags merged into all supported resources."
  type        = map(string)
  default     = {}
}

variable "codestar_connection_arn" {
  description = "Existing CodeStar connection ARN for GitHub source."
  type        = string
}

variable "repository_id" {
  description = "GitHub repository in owner/name format."
  type        = string
}

variable "branch_name" {
  description = "Source branch."
  type        = string
  default     = "main"
}

variable "build_compute_type" {
  description = "CodeBuild compute type."
  type        = string
  default     = "BUILD_GENERAL1_MEDIUM"
}
