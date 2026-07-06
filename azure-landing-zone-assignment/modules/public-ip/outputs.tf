output "public_ip_ids" {
  description = "Map of public IP keys to IDs"
  value = { for k, v in azurerm_public_ip.pip : k => v.id }
}

output "public_ip_addresses" {
  description = "Map of public keys to IP addresses"
  value = { for k, v in azurerm_public_ip.pip : k => v.ip_address }
}

output "public_ip_fqdns" {
  description = "Map of public IP keys to FQDNs"
  value = { for k, v in azurerm_public_ip.pip : k => v.fqdn }
}