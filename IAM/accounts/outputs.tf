// Outputs for the Service Role names and their ARNS
output "service_role_arns" {
  value = module.service_roles.role_arns
}

// Outputs for the access keys and secret access keys for the service accounts and developer accounts
output "service_user_access_keys" {
  value = module.service_users.access_keys
}

output "service_user_secret_access_keys" {
  value     = module.service_users.secret_access_keys
  sensitive = true
}