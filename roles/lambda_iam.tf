data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
    ]
  }
}

resource "aws_iam_policy" "lambda_execution_policy" {
  name   = "lambda-execution-policy"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        Action: [
          "bedrock:InvokeModel"
        ],
        Effect: "Allow",
        Resource: "arn:aws:bedrock:*::foundation-model/amazon.titan-embed-text-v2:0"
      },
      {
        "Effect": "Allow",
        "Action": "secretsmanager:GetSecretValue",
        "Resource": ["*"]
      },
      {
        "Action": [
          "s3:GetObject",
          "s3:ListBucket"
        ],
        "Effect": "Allow",
        "Resource": [
          "*"
        ]
      },
      {
        Action: [
          "states:StartExecution"
        ],
        Effect: "Allow",
        Resource: [
          "arn:aws:states:us-east-1:327989636102:stateMachine:arb-adapter-statemachine"
        ]
      }
    ]
  })
}

resource "aws_iam_role" "function_role" {
  name = "arbriver-lambda-role"
  assume_role_policy  = data.aws_iam_policy_document.lambda_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "bedrock_access_policy_attachment" {
  role       = aws_iam_role.function_role.id
  policy_arn = aws_iam_policy.lambda_execution_policy.arn
}

resource "aws_iam_role_policy_attachment" "basic_policy_attachment" {
  role       = aws_iam_role.function_role.id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}