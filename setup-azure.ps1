Param (
    [string] $subscriptionId = "",
    [string] $resourceGroupName = "rg-samples-sfabdocker",
    [string] $clusterName = "sfab-dockertests-cluster",
    [string] $location = "westeurope",
    [string] $certPassword = "SfabD0ck3rTest$",
    [string] $certSubject = "sfabdockertests.westeu.cloudapp.azure.com",
    [string] $vaultName = "sfab-dockertests-vault",
    [string] $vmPassword = "P@ssw0rd123$",
    [string] $vmUsername = "sfabuser",
    [int] $clusterSize = 1
)

az login --use-device-code

az account set --subscription $subscriptionId

az group create -l $location -n $resourceGroupName

az sf cluster create -g $resourceGroupName -l $location `
    --certificate-output-folder . --certificatePassword $certPassword --certificate-subject-name $certSubject `
    --cluster-name $clusterName --cluster-size $clusterSize --os UbuntuServer1904 `
    --vault-name $vaultName --vault-resource-group $resourceGroupName `
    --vm-password $vmPassword --vm-user-name $vmUsername