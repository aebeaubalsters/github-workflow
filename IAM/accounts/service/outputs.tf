output "access_keys" {
  value = { for username, mod in module.service_user : username => mod.access_key }
}

output "secret_access_keys" {
  value     = { for username, mod in module.service_user : username => mod.secret_access_key }
  sensitive = true
}