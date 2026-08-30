resource "aws_ecr_repository" "app" {
  name                 = "devsecops-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "devsecops-app"
    Environment = "dev"
    Project     = "aws-devsecops-ecs-project"
  }
}