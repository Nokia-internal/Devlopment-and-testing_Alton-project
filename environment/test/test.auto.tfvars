test_rg = {

  rg1 = {
    rg_name = "test-netflix-rg101"
    loc     = "centralindia"
  }

  rg2 = {
    rg_name = "test-starbucks-rg201"
    loc     = "eastus"
  }

}


##########################################################################################################
test_vnet = {

  vnet1 = {
    vnet_name = "test-netflix-vnet101"
    loc       = "centralindia"
    rgname    = "test-netflix-rg101"
    addspace  = ["10.50.0.0/16"]
  }

  vnet2 = {
    vnet_name = "test-starbucks-vnet201"
    loc       = "eastus"
    rgname    = "test-starbucks-rg201"
    addspace  = ["10.60.0.0/16"]
  }

}

#########################################################################################################################

test_subnet = {

  sub1 = {
    sub_name  = "test-netflix-subnet101"
    rgname    = "test-netflix-rg101"
    vnet_name = "test-netflix-vnet101"
    addprefix = ["10.50.1.0/26"]
  }

  #   sub2 = {
  #   sub_name  = "test-netflix-subnet102"
  #   rgname    = "test-netflix-rg101"
  #   vnet_name = "test-netflix-vnet101"
  #   addprefix = ["10.50.2.0/26"]
  # }

  sub3 = {
    sub_name  = "AzureBastionSubnet"
    rgname    = "test-netflix-rg101"
    vnet_name = "test-netflix-vnet101"
    addprefix = ["10.50.3.0/26"]
  }

  sub4 = {
    sub_name  = "test-starbucks-subnet201"
    rgname    = "test-starbucks-rg201"
    vnet_name = "test-starbucks-vnet201"
    addprefix = ["10.60.1.0/26"]
  }
}

#######################################################################################################################

test_nic = {

  nic1 = {
    nic_name    = "test-netflix-nic101"
    loc         = "centralindia"
    rgname      = "test-netflix-rg101"
    subnet_name = "test-netflix-subnet101"
    vnet_name   = "test-netflix-vnet101"

  }

  nic2 = {
    nic_name    = "test-netflix-nic102"
    loc         = "centralindia"
    rgname      = "test-netflix-rg101"
    subnet_name = "test-netflix-subnet101"
    vnet_name   = "test-netflix-vnet101"

  }

  nic3 = {
    nic_name    = "test-starbucks-nic201"
    loc         = "eastus"
    rgname      = "test-starbucks-rg201"
    subnet_name = "test-starbucks-subnet201"
    vnet_name   = "test-starbucks-vnet201"

  }


}
########################################################################
test_pip = {

  pip1 = {
    pip_name          = "test-bastion-pip101"
    rg_name           = "test-netflix-rg101"
    loc               = "centralindia"
    allocation_method = "Static"
  }
}

#########################################################################################
test_bast = {

  bastion1 = {
    bastion_name = "test-bastion-101"
    location     = "centralindia"
    sub_name     = "AzureBastionSubnet"
    vnet_name    = "test-netflix-vnet101"
    rg_name      = "test-netflix-rg101"
    pip_name     = "test-bastion-pip101"
    ip_name      = "bastion_configuartion"



  }
}


#################################################################################################################################

test_nsg = {

  nsg1 = {

    nsg_name = "test-netflix-nsg101"
    location = "centralindia"
    rg_name  = "test-netflix-rg101"

    sec_name                   = "Allow-RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  nsg2 = {

    nsg_name = "test-netflix-nsg102"
    location = "centralindia"
    rg_name  = "test-netflix-rg101"

    sec_name                   = "Allow-RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }




  nsg3 = {

    nsg_name = "test-starbucks-nsg201"
    location = "eastus"
    rg_name  = "test-starbucks-rg201"

    sec_name                   = "Allow-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

#########################################################################################################################################



test_nisgasso = {

  nisg1 = {
    nic_name = "test-netflix-nic101"
    rgname   = "test-netflix-rg101"
    nsg_name = "test-netflix-nsg101"
  }

  nisg2 = {
    nic_name = "test-netflix-nic102"
    rgname   = "test-netflix-rg101"
    nsg_name = "test-netflix-nsg102"
  }

  nisg3 = {
    nic_name = "test-starbucks-nic201"
    rgname   = "test-starbucks-rg201"
    nsg_name = "test-starbucks-nsg201"
  }

}


#####################################################################################################################
test_vm = {

  vm1 = {

    vm_name        = "test-netflixvm1"
    rgname         = "test-netflix-rg101"
    location       = "centralindia"
    size           = "Standard_B2as_v2"
    admin_username = "testuser"
    admin_password = "testuser@1234"
    # network_interface_ids = [azurerm_network_interface.example.id]


    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"


    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-datacenter-azure-edition"
    version   = "latest"
    # publisher = "MicrosoftWindowsServer"
    # offer     = "WindowsServer"
    # sku       = "2016-Datacenter"
    # version   = "latest"

    nic_name = "test-netflix-nic101"

  }

  vm2 = {

    vm_name        = "test-netflixvm2"
    rgname         = "test-netflix-rg101"
    location       = "centralindia"
    size           = "Standard_B2as_v2"
    admin_username = "testuser"
    admin_password = "testuser@1234"
    # network_interface_ids = [azurerm_network_interface.example.id]


    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"



    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-datacenter-azure-edition"
    version   = "latest"

    nic_name = "test-netflix-nic102"

  }


  vm3 = {

    vm_name        = "test-starbvm1"
    rgname         = "test-starbucks-rg201"
    location       = "eastus"
    size           = "Standard_D2as_v7"
    admin_username = "testuser"
    admin_password = "testuser@1234"
    # network_interface_ids = [azurerm_network_interface.example.id]


    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"



    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-datacenter-azure-edition"
    version   = "latest"

    nic_name = "test-starbucks-nic201"

  }
}


#################################################################################################################