SIGNALR_SERVICE_NAME=msl-sigr-signalr$(openssl rand -hex 5)
az signalr create \
  --name $SIGNALR_SERVICE_NAME \
  --resource-group [sandbox resource group name] \
  --sku Free_DS2 \
  --unit-count 1

az resource update \
  --resource-type Microsoft.SignalRService/SignalR \
  --name $SIGNALR_SERVICE_NAME \
  --resource-group [sandbox resource group name] \
  --set properties.features[flag=ServiceMode].value=Serverless

SIGNALR_CONNECTION_STRING=$(az signalr key list \
  --name $(az signalr list \
    --resource-group [sandbox resource group name] \
    --query [0].name -o tsv) \
  --resource-group [sandbox resource group name] \
  --query primaryConnectionString -o tsv)

printf "\n\nReplace <SIGNALR_CONNECTION_STRING> with:\n$SIGNALR_CONNECTION_STRING\n\n"