# Create a Resource Group
`powershell
az group create --name tfstate-rg --location "West India"
`

# Create a Storage Account
`powershell
az storage account create --name "sumitdemosatfstate" --resource-group "tfstate-rg" --location "West India" --sku Standard_LRS --verbose
`

# Create a Blob Container
`powershell
az storage container create --name tfstate --account-name "sumitdemosatfstate"
`