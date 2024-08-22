terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
 }
}

terraform {
  source = "./modules/s3"
}


remote_state {
  backend = "s3"
  config = {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
