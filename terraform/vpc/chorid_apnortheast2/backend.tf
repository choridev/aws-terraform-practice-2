terraform {
  required_version = ">= 1.5.7"

  backend "s3" {
    bucket         = "chori-preprod-apnortheast2-tfstate"
    key            = "chori/terraform/vpc/chorid_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

