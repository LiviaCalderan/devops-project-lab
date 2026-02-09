resource "aws_ecr_repository" "this" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ecr-repo"
    }
  )

}
