$resourceGroupName = "cosmosdb"
$location = "westus"
$accountName= "laaz203cosmosdb"
$databaseName = "myDatabase"

az group create `
 -n $resourceGroupName `
 -l $location

# Create a SQL API Cosmos DB account with session consistency and multi-master enabled
az cosmosdb create `
 -g $resourceGroupName `
 --name $accountName `
 --kind GlobalDocumentDB `
 --locations "West US=0" "North Central US=1" `
 --default-consistency-level Strong `
 --enable-multiple-write-locations true `
 --enable-automatic-failover true

# Create a database
az cosmosdb database create `
 -g $resourceGroupName `
 --name $accountName `
 --db-name $databaseName

# List account keys
az cosmosdb list-keys `
 --name $accountName `
 -g $resourceGroupName

# List account connection strings
az cosmosdb list-connection-strings `
 --name $accountName `
 -g $resourceGroupName

az cosmosdb show `
 --name $accountName `
 -g $resourceGroupName `
 --query "documentEndpoint"

# Clean up
az group delete -y -g $resourceGroupName

export ENDPOINT=$(az cosmosdb list --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9 \
        --output tsv --query [0].documentEndpoint)

export KEY=$(az cosmosdb list-keys --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9  \
        --name $COSMOS_NAME --output tsv --query primaryMasterKey)

az cosmosdb database create --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9 \
        --name $COSMOS_NAME --db-name mslearn

az cosmosdb collection create --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9 \
        --name $COSMOS_NAME --db-name mslearn --collection Small \
        --partition-key-path /id --throughput 400
az cosmosdb collection create --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9 \
        --name $COSMOS_NAME --db-name mslearn --collection HotPartition \
        --partition-key-path /Item/Category --throughput 7000
az cosmosdb collection create --resource-group learn-48cc5365-b124-47ef-b4f1-1845b5dc3bd9 \
        --name $COSMOS_NAME --db-name mslearn --collection Orders \
        --partition-key-path /Item/id --throughput 7000
