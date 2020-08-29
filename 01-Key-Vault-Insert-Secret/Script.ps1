$resourceGroupName = 'azncvs01webapprg1' #Read-Host -Prompt "Enter the name of the Resource Group that contains the Key Vault"
$keyVaultName = 'azncvs01webappkv1' #Read-Host -Prompt "Enter the name of the KeyVault to copy the secret to"
$secretName = Read-Host -Prompt "Enter the secret name"
$secretValue = Read-Host -Prompt "Enter the service account password" -AsSecureString

$templateUri = "https://raw.githubusercontent.com/amk-cgill/arm-templates/master/01-Key-Vault-Insert-Secret/azuredeploy.json"

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri $templateUri -keyVaultName $keyVaultName -secretValue $secretValue -Verbose