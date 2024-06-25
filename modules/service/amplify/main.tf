resource "aws_amplify_app" "frontend" {
  name       = "${var.namespace}-${var.stage}-${var.name}"
  repository = var.repository
  platform = "WEB_COMPUTE"
  access_token = var.token



  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 0.1
    frontend:
      phases:
        preBuild:
          commands:
            - yarn install
        build:
          commands:
            - yarn run build
      artifacts:
        baseDirectory: dist
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }
  
  
  tags= {
    Name = "${var.namespace}-${var.stage}-${var.name}"
  }


}

resource "aws_amplify_branch" "branch" {
  app_id      = aws_amplify_app.frontend.id
  branch_name = var.branch_name

  framework = "React"
  stage     = "DEVELOPMENT"

  environment_variables = {
    VITE_APP_REGION = var.aws_region
    VITE_APP_USER_POOL_ID = var.user_pool_id
    VITE_APP_USER_POOL_CLIENT_ID = var.user_pool_client_id
    VITE_APP_USER_IDENTITY_POOL_ID = var.user_identity_pool_id
  }
    tags = {
    Name = "${var.namespace}-${var.stage}-${var.name}-branch"
  }
}

