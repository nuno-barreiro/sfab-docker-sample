# sfabdocker
Sample for deploying a .NET Core containerized application in a Service Fabric cluster 

# How to run the sample

## Pre-Requisites
- An Azure account
- Powershell 
- Az Module

## Creating the Azure Service Fabric Cluster
- Clone this repository on your machine to a desired location (e.g. C:\samples\sfabdocker-sample)
- Open a powershell prompt and execute the `scripts\setup-azure.ps1` passing all the needed arguments
- Look for the Service Fabric management endpoint URL in the output of the execution and keep it
- Import the generated certificate from the certificates folder into `Local Computer`
- Open a browser and go to the cluster management endpoint
- Verify that everything is working correctly

