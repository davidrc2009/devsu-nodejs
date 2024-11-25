#Project Info
client  = "devsu"
project = "reto"
env     = "test"

#Subscription Info
subscription_id = "698a2508-2bb9-4c93-8b7b-4aca472b46e2"
tenant_id       = "d8f851b0-f286-426f-ba9c-4ac6f1a7c06a"

#Resource Group
rg_location = "eastus2"

#AKS
kubernetes_version = "1.29.9"
node_count         = 1
vm_size            = "Standard_B2ms"
os_disk_size_gb    = 35
type               = "SystemAssigned"
dns_prefix         = "devsuaks"

#ACR
acr_sku       = "Basic"
admin_enabled = true

#Storage Account
account_tier             = "Standard"
account_replication_type = "LRS"

