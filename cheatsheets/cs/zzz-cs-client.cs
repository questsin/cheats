 *  1) Add the NuGet package Microsoft.Azure.Mobile.Client.SQLiteStore (and dependencies) to all client projects
            await queueClient.CloseAsync();
await queueClient.CloseAsync();
                    await queueClient.CompleteAsync(
await queueClient.CompleteAsync(
                await queueClient.SendAsync(message);
await queueClient.SendAsync(message);
                await this._hubContext.Clients.All.SendAsync(
            await this._hubContext.Clients.All.SendAsync(
await this._hubContext.Clients.All.SendAsync(
            catch (DocumentClientException de)
            _client = new DocumentClient(new Uri(_endpoint), _key);
            client = new MobileServiceClient(applicationURL);
                    cloudStorageAccount.CreateCloudBlobClient();
                                    .CreateCloudBlobClient();
            indexClientForUpload.Documents.Index(batch);
                new KeyVaultClient.AuthenticationCallback(
        private MobileServiceClient client;
        private static DocumentClient _client;
            queueClient.RegisterMessageHandler(
            results = indexClientForQuery.Documents
            results = indexClientForQuery.Documents.Search<Hotel>("motel", parameters);
            serviceClient.Indexes.Create(definition);
                serviceClient.Indexes.GetClient("hotels");
using Microsoft.Azure.Documents.Client;
using Microsoft.IdentityModel.Clients.ActiveDirectory;
            var client = new WebSiteManagementClient(
                var cloudBlobClient = 
            var cloudBlobClient = storageAccount
            var cloudBlobContainer = cloudBlobClient
                var cref = cloudBlobClient
            var gamersTable = tableClient.GetTableReference("Gamers");
            var indexClientForQuery = new SearchIndexClient(
            var indexClientForUpload = 
            var kvc = new KeyVaultClient(
            var queueClient = new QueueClient(
            var results = indexClientForQuery.Documents
            var serviceClient = new SearchServiceClient(
            var tableClient = storageAccount.CreateCloudTableClient();
