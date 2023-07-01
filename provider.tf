provider "aws" {
  access_key = "${{ env.AWS_ACCESS_KEY }}"
  secret_access_key = "${{ env.AWS_SECRET_ACCESS_KEY }}"
  region = "us-east-1"
}
