
// Developer IAM Group
  resource "aws_iam_group" "developer" {
    name = "DeveloperCFNGroup"
    description = "Full EC2 and S3 access"
  }

  resource "aws_iam_user" "developer" {
    name = "DeveloperUser"
  }

  resource "aws_iam_user_group_membership" "developer" {
    user = aws_iam_user.developer.name
    groups = [aws_iam_group.developer.name]
  }

  resource "aws_iam_role" "developer" {
    name = "DeveloperCFNRole"
    assume_role_policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
          Action = "sts:AssumeRole"
        }
      ]
    })
  }

  resource "aws_iam_role_policy_attachment" "developer" {
    role       = aws_iam_role.developer.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  }

  resource "aws_iam_role_policy_attachment" "developer_s3" {
    role       = aws_iam_role.developer.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  }

// Operations IAM Group
  resource "aws_iam_group" "operations" {
    name = "OperationsCFNGroup"
    description = "Full infrastructure access"
  }

  resource "aws_iam_user" "operations" {
    name = "OperationsUser"
  }

  resource "aws_iam_user_group_membership" "operations" {
    user = aws_iam_user.operations.name
    groups = [aws_iam_group.operations.name]
  }

  resource "aws_iam_role" "operations" {
    name = "OperationsCFNRole"
    assume_role_policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
          Action = "sts:AssumeRole"
        }
      ]
    })
  }

  resource "aws_iam_role_policy_attachment" "operations" {
    role       = aws_iam_role.operations.name
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  }

// Finance Manager IAM Group
  resource "aws_iam_group" "finance_manager" {
    name = "FinanceManagerCFNGroup"
    description = "Cost management and billing access"
  }

  resource "aws_iam_user" "finance_manager" {
    name = "FinanceManagerUser"
  }

  resource "aws_iam_user_group_membership" "finance_manager" {
    user = aws_iam_user.finance_manager.name
    groups = [aws_iam_group.finance_manager.name]
  }

  resource "aws_iam_role" "finance_manager" {
    name = "FinanceManagerCFNRole"
    assume_role_policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
          Action = "sts:AssumeRole"
        }
      ]
    })
  }

  resource "aws_iam_role_policy_attachment" "finance_manager" {
    role       = aws_iam_role.finance_manager.name
    policy_arn = "arn:aws:iam::aws:policy/Billing"
  }

// Data Analyst IAM Group
  resource "aws_iam_group" "data_analyst" {
    name = "DataAnalystCFNGroup"
    description = "Read-only access to data, S3, RDS, and CloudWatch"
  }

  resource "aws_iam_user" "data_analyst" {
    name = "DataAnalystUser"
  }

  resource "aws_iam_user_group_membership" "data_analyst" {
    user = aws_iam_user.data_analyst.name
    groups = [aws_iam_group.data_analyst.name]
  }

  resource "aws_iam_role" "data_analyst" {
    name = "DataAnalystCFNRole"
    assume_role_policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Effect = "Allow"
          Principal = {
            Service = "ec2.amazonaws.com"
          }
          Action = "sts:AssumeRole"
        }
      ]
    })
  }

  resource "aws_iam_role_policy_attachment" "data_analyst_s3" {
    role       = aws_iam_role.data_analyst.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  }

  resource "aws_iam_role_policy_attachment" "data_analyst_rds" {
    role       = aws_iam_role.data_analyst.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess"
  }

  resource "aws_iam_role_policy_attachment" "data_analyst_cloudwatch" {
    role       = aws_iam_role.data_analyst.name
    policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
  }