# AWS DevSecOps ECS Project

A hands-on DevSecOps project demonstrating automated infrastructure deployment, CI/CD, container security, vulnerability remediation, and application monitoring on AWS.

## Project Overview

This project deploys a containerized application to Amazon ECS Fargate using Terraform and GitHub Actions.

Security is integrated into the CI/CD workflow using Trivy to scan Docker images for vulnerabilities before they are pushed to Amazon ECR. Amazon CloudWatch is used for application logging, monitoring, and troubleshooting.

## Architecture

Developer → GitHub → GitHub Actions → Docker Build → Trivy Security Scan → Amazon ECR → Amazon ECS Fargate → Application Load Balancer → Application

Amazon CloudWatch provides centralized application logging and monitoring.

## Technologies Used

- AWS
- Terraform
- Docker
- Amazon ECR
- Amazon ECS Fargate
- Application Load Balancer (ALB)
- GitHub Actions
- Trivy
- Amazon CloudWatch
- Git

## Infrastructure as Code

Terraform is used to provision and manage the AWS infrastructure required to run the containerized application.

Infrastructure as Code provides a repeatable and consistent way to create and manage cloud resources.

## CI/CD with GitHub Actions

GitHub Actions automates the container build and delivery workflow.

The pipeline includes:

1. Checkout source code
2. Build the Docker image
3. Scan the container image with Trivy
4. Authenticate with Amazon ECR
5. Tag the Docker image
6. Push the image to Amazon ECR

## Container Security with Trivy

Trivy is integrated into the GitHub Actions pipeline to scan the Docker image for known vulnerabilities.

Vulnerability scan results were reviewed and remediation was performed by updating the container configuration and using an Alpine-based image to reduce identified vulnerabilities.

Security reports are maintained in the `security-reports` directory.

## Amazon ECS Fargate

The containerized application is deployed using Amazon ECS Fargate.

ECS Fargate provides managed container execution without requiring direct management of EC2 worker instances.

An Application Load Balancer routes incoming application traffic to the ECS service.

## Monitoring and Logging

Amazon CloudWatch is used for centralized application logging and monitoring.

Application logs are available in the CloudWatch log group:

`/ecs/devsecops-app`

A one-week log retention period was configured.

Gunicorn access logging was also enabled to provide visibility into application requests and support troubleshooting.

## Security Practices

The project demonstrates several DevSecOps practices:

- Container vulnerability scanning
- Vulnerability remediation
- IAM-based AWS access
- Infrastructure as Code
- Automated CI/CD
- Centralized application logging
- Controlled network access
- Security checks integrated into the delivery workflow

## Project Structure

```text
aws-devsecops-ecs-project/
├── .github/workflows/     # GitHub Actions CI/CD workflow
├── app/                   # Application and Docker configuration
├── security-reports/      # Vulnerability scan reports
├── terraform/             # AWS infrastructure as code
├── .gitignore
└── README.md
```

## Key Takeaways

This project provided hands-on experience with:

- Building AWS infrastructure using Terraform
- Containerizing an application with Docker
- Automating CI/CD with GitHub Actions
- Managing Docker images with Amazon ECR
- Deploying containers with Amazon ECS Fargate
- Integrating Trivy vulnerability scanning into CI/CD
- Reviewing and remediating container vulnerabilities
- Implementing CloudWatch logging and monitoring
- Troubleshooting application requests using logs

## Cleanup

AWS resources created for testing were removed after project completion to avoid unnecessary cloud costs.

Terraform-managed resources were removed using:

`terraform destroy`

Resources configured separately were reviewed and removed as part of the cleanup process.

## Author

**Kalpana Vaddepalli**

AWS | DevOps | Terraform | Docker | CI/CD | DevSecOps
