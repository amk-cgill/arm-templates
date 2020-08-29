$resourceGroupName = "Read-Host -Prompt "Enter the name of the Resource Group that contains the Key Vault 
$keyVaultName = Read-Host -Prompt "Enter the name of the KeyVault to copy the secret to"
$secretName = Read-Host -Prompt "Enter the service account name"
$secretValue = Read-Host -Prompt "Enter the service account password" -AsSecureString

$adUserId = (Get-AzADUser -UserPrincipalName $upn).Id
$templateUri = "https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/tutorials-use-key-vault/CreateKeyVault.json"

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri $templateUri -keyVaultName $keyVaultName -secretValue $secretValue

Write-Host "Press [ENTER] to continue ..."