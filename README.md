# sfabdocker
Sample for deploying a .NET Core containerized application in a Service Fabric cluster 

# How to run the sample

## Pre-Requisites
- [Microsoft .NET Core 3.1](https://dotnet.microsoft.com/download/dotnet-core/3.1)
- Azure subscription
- [Microsoft Az CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
- [Service Fabric CLI](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-cli)
- Windows Powershell

## Creating the Azure Service Fabric Cluster
- Clone this repository on your machine to a desired location (e.g. C:\samples\sfabdocker-sample)
- Open a powershell prompt and execute the `scripts\setup-azure.ps1` passing all the needed arguments
- Look for the Service Fabric management endpoint URL in the output of the execution and keep it
- Import the generated certificate from the certificates folder into `Local Computer`
- Open a browser and go to the cluster management endpoint
- Verify that everything is working correctly

