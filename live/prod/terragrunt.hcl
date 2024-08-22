inputs = {
  bucket_name = "my-prod-bucket"
  environment = "prod"
}

include {
  path = find_in_parent_folders()
}
