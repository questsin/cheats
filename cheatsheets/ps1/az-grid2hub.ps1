
#get variables needed
$resourceGroup = az group list --query '[0].name' --output json
$namespace = az eventhubs namespace list  --resource-group $resourceGroup --query '[0].name' --output json
$hubid = az eventhubs eventhub list  --resource-group $resourceGroup --namespace-name $namespace --query '[0].id' --output json


#create event grid topic and subscription
$topicname  = "myTopic"
az eventgrid topic create  --name $topicname -l southcentralus -g $resourceGroup 
az eventgrid event-subscription create  --topic-name $topicname -g $resourceGroup --name subtoeventhub --endpoint-type eventhub --endpoint $hubid
#

#post sample events to event grid
$endpoint = az eventgrid topic list  --resource-group $resourceGroup --query '[0].endpoint' --output tsv
$key = az eventgrid topic key list  --name $topicname -g $resourceGroup --query "key1" --output tsv
$eventID = Get-Random 99999
$eventDate = Get-Date -Format s
$htbody = @{
    id= $eventID
    eventType="recordInserted"
    subject="myapp/guitars/gibson"
    eventTime= $eventDate   
    data= @{
        make="Gibson"
        model="Les Paul"
    }
    dataVersion="1.0"
}
$body = "["+(ConvertTo-Json $htbody)+"]"
Invoke-WebRequest -Uri $endpoint -Method POST -Body $body -Headers @{"aeg-sas-key" = $key}