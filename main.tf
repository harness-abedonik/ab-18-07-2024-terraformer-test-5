provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "ab-18-07-2024-terraformer-state-test-1"
    key    = "terraform.tfstate_5"
    region = "us-west-2"
  }
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_1_5" {
  name  = "ab_18_07_2024_terraformer_test_1_5"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_2_5" {
  name  = "ab_18_07_2024_terraformer_test_2_5"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_3_5" {
  name  = "ab_18_07_2024_terraformer_test_3_5"
  type  = "String"
  value = "This is a test parameter"
}

output "ab_18_07_2024_terraformer_test_1_5" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_1_5.arn
}

output "ab_18_07_2024_terraformer_test_2_5" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_2_5.arn
}

output "ab_18_07_2024_terraformer_test_3_5" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_3_5.arn
}
