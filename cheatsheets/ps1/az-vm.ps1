resource_group_name=mean-rg 

az group create \
  --name 'mean-rg' \
  --location'eastus'

az vm create \
  --resource-group [sandbox resource group name] \
  --name MeanStack \
  --image Canonical:UbuntuServer:16.04-LTS:latest \
  --admin-username azureuser \
  --generate-ssh-keys

az vm open-port \
  --port 80 \
  --resource-group learn-c1efe7e9-9b82-4897-9e54-ace79a855414 \
  --name MeanStack

ipaddress=$(az vm show \
  --name MeanStack \
  --resource-group learn-c1efe7e9-9b82-4897-9e54-ace79a855414 \
  --show-details \
  --query [publicIps] \
  --output tsv)