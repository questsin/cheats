
az postgres server create [-h] [--verbose] [--debug]
                            [--output {json,jsonc,table,tsv}]
                            [--query JMESPATH]
                            --resource-group RESOURCE_GROUP_NAME --name SERVER_NAME
                            --sku-name SKU_NAME [--location LOCATION]
                            --admin-user ADMINISTRATOR_LOGIN
                            [--admin-password ADMINISTRATOR_LOGIN_PASSWORD]
                            [--backup-retention BACKUP_RETENTION]
                            [--geo-redundant-backup GEO_REDUNDANT_BACKUP]
                            [--ssl-enforcement {Enabled,Disabled}]
                            [--storage-size STORAGE_MB]
                            [--tags [TAGS [TAGS ...]]]
                            [--version VERSION]
                            [--subscription _SUBSCRIPTION]

az postgres server create \
   --name wingtiptoys \
   --resource-group learn-47a07a78-a6b4-43fa-a886-866371e9cf8b \
   --location centralus \
   --sku-name B_Gen5_1 \
   --storage-size 20480 \
   --backup-retention 15 \
   --version 10 \
   --admin-user "azureuser" \
   --admin-password "P@ssw0rd"

az postgres server firewall-rule create \
  --resource-group learn-47a07a78-a6b4-43fa-a886-866371e9cf8b \
  --server <server-name> \
  --name AllowAll \
  --start-ip-address 0.0.0.0 \
  --end-ip-address 255.255.255.255

az postgres server firewall-rule delete \
  --name AllowAll \
  --resource-group learn-47a07a78-a6b4-43fa-a886-866371e9cf8b \
  --server-name <server-name>

psql --host=<server-name>.postgres.database.azure.com \
  --username=<admin-user>@<server-name> \
  --dbname=<database>