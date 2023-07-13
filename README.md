# OCTO azurerm Iac Library

This module allows you to create resources on Microsoft Azure, is used by the Cloud Adoption Framework for Azure (CAF) landing zones to provision resources in an Azure subscription and can deploy resources being directly invoked from the Rover 

## Prerequisites

- Setup your **environment** using the following guide [Getting Started](https://github.com/Azure/caf-terraform-landingzones/blob/master/documentation/getting_started/getting_started.md) or you use it online with [GitHub Codespaces](https://github.com/features/codespaces).
- Access to an **Azure subscription**.


## Getting started

This module can be used inside [:books: Azure Terraform Landing zones](https://aka.ms/caf/terraform), or can be used as standalone, directly from the [Terraform registry](https://registry.terraform.io/modules/aztfmod/caf/azurerm/)

```terraform
module "caf" {
  source  = "aztfmod/caf/azurerm"
  version = "~>5.5.0"
  # insert the 7 required variables here
}
```

Fill the variables as needed and documented, there is a [quick example here](https://github.com/aztfmod/terraform-azurerm-caf/tree/master/examples/standalone.md).

For a complete set of examples you can review the [full library here](https://github.com/aztfmod/terraform-azurerm-caf/tree/master/examples).

<img src="https://aztfmod.azureedge.net/media/standalone.gif" width="720"/> <br/> <br/>

