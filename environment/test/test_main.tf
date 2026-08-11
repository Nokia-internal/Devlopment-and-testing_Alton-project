module "module_rg" {

  source = "../../modules/resource_group"
  rg     = var.test_rg
}


module "module_vnet" {

  depends_on = [module.module_rg]

  source = "../../modules/virtual_network"
  vnets  = var.test_vnet
}


module "module_subnet" {

  depends_on = [module.module_vnet, module.module_rg]

  source = "../../modules/subnet"
  subs   = var.test_subnet
}

module "module_bastion" {

  depends_on = [module.module_subnet, module.module_publicip]

  source = "../../modules/bastion"
  bast   = var.test_bast

}

module "module_publicip" {

  depends_on = [module.module_rg]

  source = "../../modules/public_ip"
  pip    = var.test_pip
}

module "module_nic" {

  depends_on = [module.module_vnet, module.module_subnet]

  source = "../../modules/nic"
  nics   = var.test_nic
}

module "module_nsg" {

  depends_on = [module.module_rg]

  source = "../../modules/nsg"
  nsg    = var.test_nsg
}

module "module_nisgasso" {

  depends_on = [module.module_nic, module.module_nsg]

  source   = "../../modules/nsg_nic_asso"
  nisgasso = var.test_nisgasso
}

module "module_vm" {

  depends_on = [module.module_nic, module.module_rg]

  source = "../../modules/vm"
  vms    = var.test_vm
}


