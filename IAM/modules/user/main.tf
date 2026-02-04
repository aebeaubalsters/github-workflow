resource "aws_iam_user" "user" {
  name = var.name
  path = "/"
}

resource "aws_iam_access_key" "user" {
  user = aws_iam_user.user.name
}

resource "aws_iam_user_policy_attachment" "policy" {
  user       = aws_iam_user.user.name
  for_each   = var.policy_arns
  policy_arn = each.value
}

resource "aws_iam_user_group_membership" "group" {
  count  = var.group_names != null ? 1 : 0
  user   = aws_iam_user.user.name
  groups = var.group_names
}