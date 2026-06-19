# ── Rekognition: attach managed policy ────────────────────────────────────────

data "aws_iam_policy" "rekognition_full_access" {
  name = "AmazonRekognitionFullAccess"
}

resource "aws_iam_user_policy_attachment" "rekognition_attach" {
  user       = aws_iam_user.rekognition.name
  policy_arn = data.aws_iam_policy.rekognition_full_access.arn
}

# ── Cognito: inline policy for admin commands ──────────────────────────────────

data "aws_iam_policy_document" "cognito_admin" {
  statement {
    sid       = "CognitoAdminAccess"
    effect    = "Allow"
    actions   = ["cognito-idp:*"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "cognito_admin" {
  name        = "${var.name_prefix}-cognito-admin-policy"
  description = "Policy for Cognito admin commands"
  policy      = data.aws_iam_policy_document.cognito_admin.json
}

resource "aws_iam_user_policy_attachment" "cognito_attach" {
  user       = aws_iam_user.cognito.name
  policy_arn = aws_iam_policy.cognito_admin.arn
}
