source "azure-arm" "vm" {
  subscription_id = var.arm_subscription_id

  image_offer   = "0001-com-ubuntu-server-jammy"
  image_publisher = "canonical"
  image_sku    = "22_04-lts"

  managed_image_name        = "${var.image_name}-${var.image_version}"
  managed_image_resource_group_name = var.resource_group_name

  location           = var.azure_primary_location
  communicator         = "ssh"
  os_type           = "Linux"
  vm_size           = var.vm_size
  allowed_inbound_ip_addresses = [var.agent_ipaddress]
}