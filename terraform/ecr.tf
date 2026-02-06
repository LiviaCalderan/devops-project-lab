resource "aws_ecr_repository" "this" {
  name                 = "site-prod"
  image_tag_mutability = "MUTABLE"

}