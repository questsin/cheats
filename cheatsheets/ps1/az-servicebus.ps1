az group create -n servicebus -l westus

az servicebus namespace create --n laaz203sb -g servicebus

az servicebus namespace authorization-rule keys list `
 -g servicebus `
 --namespace-name laaz203sb `
 --name RootManageSharedAccessKey `
 --query primaryConnectionString

az servicebus queue create `
 --namespace-name laaz203sb `
 -g servicebus `
 -n testqueue 

New-AzureRmServiceBusQueue `
 -ResourceGroupName servicebus `
 -NamespaceName laaz203sb `
 -name testqueue `
 -EnablePartitioning $false

 service bus

# create a Service Bus namespace and queue
$resourceGroup = az group list --query '[0].name' --output json
$namespaceName  = "LALab" + (Get-Date).ticks

az servicebus namespace create --resource-group $resourceGroup --name $namespaceName --location southcentralus
az servicebus queue create --resource-group $resourceGroup --namespace-name $namespaceName --name myQueue
#