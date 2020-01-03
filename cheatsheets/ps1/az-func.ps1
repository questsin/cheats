funct.ps1
RESOURCEGROUP=learn-5c53f22b-5999-46d4-ae30-6b62082f23c0
STORAGEACCT=learnstorage$(openssl rand -hex 5)
FUNCTIONAPP=learnfunctions$(openssl rand -hex 5)

az storage account create \
  --resource-group "$RESOURCEGROUP" \
  --name "$STORAGEACCT" \
  --kind StorageV2 \
  --location centralus

az functionapp create \
  --resource-group "$RESOURCEGROUP" \
  --name "$FUNCTIONAPP" \
  --storage-account "$STORAGEACCT" \
  --runtime node \
  --consumption-plan-location centralus

az functionapp deployment source config-zip \
-g <resource-group> \
-n <function-app-name> \
--src <zip-file>

cd ~/loan-wizard
func azure functionapp publish "$FUNCTIONAPP"

{
  "bindings": [
    {
      "type": "httpTrigger",
      "authLevel": "anonymous",
      "direction": "in",
      "name": "req",
      "methods": ["get"]
    },
    {
      "type": "http",
      "direction": "out",
      "name": "res"
    },
    {
      "type": "cosmosDB",
      "direction": "in",
      "name": "stocks",
      "ConnectionStringSetting": "AzureCosmosDBConnectionString",
      "databaseName": "stocksdb",
      "collectionName": "stocks"
    }
  ]
}