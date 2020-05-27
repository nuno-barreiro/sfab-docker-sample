Param (
    [string] $subscriptionId = "",
    [string] $resourceGroupName = "rg-samples-sfabdocker",
    [string] $certSubject = "sfabdockertests.westeu.cloudapp.azure.com"
)

az login --use-device-code

az account set --subscription $subscriptionId

Write-Host "Deleting resource group from Azure..."
az group delete -n $resourceGroupName

$certificate = Get-ChildItem -Path Cert:\LocalMachine\My 
    | Select-Object 
    | Where-Object -Property Subject -EQ "CN=$certSubject"

Write-Host "Removing certificate from store..."
Remove-Item -Path $certificate.PSPath -Recurse -Force