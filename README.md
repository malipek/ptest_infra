# ptest_infra
Penetration tesing infrastructure as a code

Based on https://www.terraform.io/docs/providers/azurerm/r/virtual_machine.html

OS - Ubuntu

## Prerequisities
[Terraform](https://www.terraform.io/downloads.html) installed, path to _terraform_ executable exists within _PATH_ OS variable.

## Usage
[Create service principal in Azure subscription](https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html)

Edit _env.sh_ and replace _SUBSCRITION ID_, _App ID_, _PASSWORD_, _TENANT_ID_ with obtained values.

```Shell
./env.sh
terraform init
terraform apply -var="var1=val1" -var="var2=val2"
```

### Variables

|Name|Default value|Description|
|--------|-------------|-----------|
|_allowednet_|all networks|IPv4 CIDR network address (or single IP) allowed co connect to public IP|
|_srvcount_|1|amount of VMs to be created|
|_prefix_|"_pentesting_"|prefix which will be used in all names including resource group and tags|
|_location_|"_westus2_"|location for resources, can be obtained by `az account list-locations --query '[].{Name.name}'`|
|_vmsize_|"_Standard_DS1_v2_"|VM size, can be obtained by `az vm list-sizes --location LOCATION --query '[].{Name:name}'` in chosen LOCATION|
|_sku_|"_18.04-LTS_"|SKU for Ubuntu from Canonical, can obtained by `az vm image list -p Canonical -f UbuntuServer --query '[].{SKU:sku}'`|
|_admin_keydata_|my public key|PUBLIC SSH key of admin user to be created in OS|
|_admin_username_|"_malipek_"|username of admin user to be created in OS|

