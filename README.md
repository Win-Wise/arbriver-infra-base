# Arbriver Base Infrastructure
Base Infrastructure for The Arbriver Project

## Currently Defined:
- Lambda Layer for All Python Lambdas
- AWS IAM Roles
  - Lambda Execution Role
  - Statemachine Execution Role
- Secretsmanager Secret Definition For App Credentials
- S3 Bucket For General Use

## For local development
```bash
pip install git+https://github.com/Win-Wise/arbriver-infra-base.git#subdirectory=lambda-base/arbhelpers
```