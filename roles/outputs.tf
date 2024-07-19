output "lambda_execution_role" {
  value = aws_iam_role.function_role
}

output "statemachine_execution_role" {
  value = aws_iam_role.statemachine_execution_role
}