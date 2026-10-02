module "this" {
    source = "../.."

    name        = "cicd-golden-pipeline"
    environment = "dev"

codestar_connection_arn = "arn:aws:codestar-connections:us-east-1:111122223333:connection/example"
repository_id           = "example-org/example-service"
branch_name             = "main"

    tags = {
      Owner      = "platform-team"
      CostCenter = "portfolio"
    }
  }
