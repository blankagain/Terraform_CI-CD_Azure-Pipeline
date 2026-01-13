terraform {

  backend "azurerm" {
    resource_group_name = "RG1"
    storage_account_name = "terraform023"
    container_name = "tfstatestore"
    key = "predeploy.terraform.tfstate"
  }
}
