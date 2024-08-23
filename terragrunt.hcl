terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
 }
}

terraform {
  source = "../../modules/s3"
}



