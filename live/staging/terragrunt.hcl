inputs = {
  bucket_name = "my-staging-bucket"
  environment = "staging"
}

include {
  path = find_in_parent_folders()
}
