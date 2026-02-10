terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-liv28"
    key    = "site/terraform.tfstate"
    region = "us-east-2"
    encrypt = true

    use_lockfile = true

  }
  
}