az acr list --query "max_by([], &creationDate).name" --output tsv
acrName=$(az acr list --query "max_by([], &creationDate).name" --output tsv)

az acr build --registry $acrName --image ipcheck:latest .
