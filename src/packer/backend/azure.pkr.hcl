source "azure-arm" "vm" {
  client_id       = cb131b4f-c855-4e78-a58a-6c28f8954676
  client_secret   = c341d3b6-ef5d-4783-a60a-484018ffd99f
  subscription_id = a8aa213d-fade-4421-b170-bbfa0c6edf41
  tenant_id       = 9940e0f2-360d-4fa0-8caa-0ed524edcfe3

  image_offer     = "0001-com-ubuntu-server-jammy"
  image_publisher = "canonical"
  image_sku       = "22_04-lts"

  managed_image_name                = "${var.image_name}-${var.image_version}"
  managed_image_resource_group_name = var.resource_group_name

  location                     = var.azure_primary_location
  communicator                 = "ssh"
  os_type                      = "Linux"
  vm_size                      = var.vm_size
  allowed_inbound_ip_addresses = [var.agent_ipaddress]

}