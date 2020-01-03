
az ad sp delete --id $sp.appId
az ad sp delete --id "a7520b14-40f8-466f-90a5-372c789781bc"
az ad sp list --display-name $spname
az ad sp list --display-name LaAz203WebSiteManager
az ad sp show --id $sp.appId
az aks create -g $rg `
az aks get-credentials `
az appservice plan create `
az appservice plan create -n $planName `
az appservice plan create -n $planName -g $resourceGroup -l $location --sku B1
az batch account create `
az batch account login `
az batch job create `
az batch pool create `
az batch pool delete -n $poolName
az batch pool show `
az batch task create `
az batch task file download `
az batch task file list `
az batch task show `
az cosmosdb create `
az cosmosdb database create `
az cosmosdb list-connection-strings `
az cosmosdb list-keys `
az cosmosdb show `
az eventgrid event-subscription create `
az eventgrid event-subscription delete `
az group create `
az group create -n $resourceGroup -l $location
az group create -n $resourceGroup -l eastus
az group create -n $rg `
az group create -n $rg -l $location
az group create -n $rg -l westus
az group create --n $rgname -l $location
az group create -n $rgname -l $location
az group create -n $rgName -l $location
az group create -n $webapprgname -l $location
az group create -n servicebus -l westus
az group delete -g $resourceGroup --yes
az group delete -n $resourceGroup
az group delete -n $rg
az group delete -n $rgName
az group delete -n $rgname --yes
az group delete -n $rg -y
az group delete -n $rg --yes
az group delete -n $webapprgname --yes
az group delete --name $rgName --yes
az group delete -y -g $resourceGroupName
az group delete -y -n $rgname
az keyvault create `
az keyvault delete --name $kvname
az keyvault secret set `
az keyvault secret show `
az keyvault set-policy `
az login
az login #back to main account
az login --service-principal `
az login --service-principal --username $sp.appId --password $sp.password --tenant $tenantid
az resource create `
az resource show -g $resourceGroup -n $appInsightsName `
az role assignment create `
az role assignment delete `
az role assignment delete --assignee $sp.appId --role "Contributor"
az role assignment list --assignee $sp.appId
az role definition list --custom-role-only false --output json --query '[].{"roleName":roleName, "description":description, "roleType":roleType}'
az role definition list --name "Contributor"
az role definition list --name "Contributor" `
az role definition list --output json `
az search admin-key show `
az search query-key list `
az search service create `
az servicebus namespace authorization-rule keys list `
az servicebus namespace create --n laaz203sb -g servicebus
az servicebus queue create `
az sql db create `
az sql server create -g $rgName -l $location -n $serverName `
az storage account create `
az storage account show-connection-string `
az storage blob delete `
az storage blob upload `
az storage blob url `
az storage container create `
az storage container list `
az storage container policy create `
az storage container policy list `
az storage message peek `
az storage message put `
az storage queue create `
az webapp config appsettings set `
az webapp create `
az webapp create -n $appName -g $resourceGroup --plan $planName
az webapp delete -g $resourceGroup -n $appName
az webapp delete -n $webappname -g $webapprgname
az webapp deployment source config `
az webapp deployment source config-zip `
az webapp deployment source config-zip -n $appName -g $resourceGroup --src $package
az webapp deployment source show `
az webapp deployment source sync -n $appname -g $rg
az webapp identity show `
az webapp log config `
az webapp log config -n $appName -g $resourceGroup --level information --application-logging true
az webapp log show -n $appName -g $resourceGroup
az webapp log tail --n $appName -g $resourceGroup
az webapp show `
az webapp show -n $appname -g $rg
az webapp show -n $appname -g $rg --query "defaultHostName" -o tsv
