# Amplify and Cognito Authentication Module

This module sets up AWS Amplify and Cognito for authentication.

## Usage

```
module "app"{
    source      = "git@github.com:bibek65/amplify-cognito.git//modules/service/workflow" 
    repository = "your_github_repo_url"
    token = "your_github_token"
    aws_region = "your_aws_region"
}
```

