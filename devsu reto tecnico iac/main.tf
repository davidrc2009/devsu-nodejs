#Create a Resource Group
module "devsu_rg" {
  source   = "./modules/rg"
  name     = "${var.client}-${var.project}-${var.env}-rg"
  location = var.rg_location
}

#Create AKS
module "devsu_aks" {
  source              = "./modules/aks"
  name                = "${var.client}-${var.project}-${var.env}-aks"
  location            = module.devsu_rg.rg_location_output
  resource_group_name = module.devsu_rg.rg_name_output
  kubernetes_version  = var.kubernetes_version
  node_name           = "${var.env}node"
  node_count          = var.node_count
  vm_size             = var.vm_size
  os_disk_size_gb     = var.os_disk_size_gb
  type                = var.type
  dns_prefix          = "${var.dns_prefix}${var.env}"
  depends_on          = [module.devsu_rg]
}

#Create ACR
module "devsu_acr" {
  source              = "./modules/acr"
  name                = "${var.client}${var.project}${var.env}acr2"
  resource_group_name = module.devsu_rg.rg_name_output
  location            = module.devsu_rg.rg_location_output
  sku                 = var.acr_sku
  admin_enabled       = var.admin_enabled
}

#Create Storage Account
module "devsu_sa" {
  source                   = "./modules/sa"
  name                     = "${var.client}${var.project}${var.env}sa2"
  resource_group_name      = module.devsu_rg.rg_name_output
  location                 = module.devsu_rg.rg_location_output
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

