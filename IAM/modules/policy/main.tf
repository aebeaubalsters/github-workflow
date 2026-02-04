resource "aws_iam_policy" "policy" {
  name        = var.name
  path        = "/"
  description = var.policy_description
  policy      = file("${var.policy_document_path}")
}