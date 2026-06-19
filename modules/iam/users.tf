resource "aws_iam_user" "rekognition" {
  name = "${var.name_prefix}-rekognition-user"
  path = "/service-accounts/"
}

resource "aws_iam_access_key" "rekognition" {
  user = aws_iam_user.rekognition.name
}

resource "aws_iam_user" "cognito" {
  name = "${var.name_prefix}-cognito-user"
  path = "/service-accounts/"
}

resource "aws_iam_access_key" "cognito" {
  user = aws_iam_user.cognito.name
}