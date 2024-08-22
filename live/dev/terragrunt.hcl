inputs = {
  bucket_name = "my-dev-bucket"
  environment = "dev"
}

include {
  path = find_in_parent_folders()
}
