await AddAsync(gamersTable, gamer1);
await AddBatchAsync(gamersTable, gamers);
await ApplicationTokenProvider.LoginSilentAsync(
await azureServiceTokenProvider
await _client.CreateDatabaseIfNotExistsAsync(
await _client.CreateDocumentAsync(
await _client.CreateDocumentCollectionIfNotExistsAsync(
await _client.ReadDocumentAsync(
await client.SyncContext.InitializeAsync(store);
await client.SyncContext.PushAsync();
await cloudBlobContainer.CreateAsync();
await cloudBlobContainer.DeleteIfExistsAsync();
await cloudBlobContainer.SetPermissionsAsync(permissions);
await cloudBlockBlob.DownloadToFileAsync(
await cloudBlockBlob.ReleaseLeaseAsync(
await cloudBlockBlob.UploadFromFileAsync(localFileName);
await cloudBlockBlob.UploadFromFileAsync(localFileName);
await CreateDocumentIfNotExistsAsync(
await DeleteAllGamersAsync(gamersTable);
await DeleteAsync(table, gamer);
await gamersTable.CreateIfNotExistsAsync(); 
await GetAsync<Gamer>(table, "France", "bleu@game.net")
await GetAsync<Gamer>(table, "US", "mike@contoso.net"),
await GetAsync<Gamer>(table, "US", "mike@game.net"),
await GetDocumentByIdAsync(
await QSTodoService.DefaultService.Authenticate(this);
await queueClient.CloseAsync();
await queueClient.CompleteAsync(
await queueClient.SendAsync(message);
await RefreshAsync ();
// await RefreshAsync ();
await SyncAsync(pullData: true);
await SyncAsync(); // Send changes to the mobile app backend.
await table.ExecuteAsync(insertOperation);
await table.ExecuteAsync(retrieve);
await table.ExecuteBatchAsync(batchOperation);
await Task.Delay(TimeSpan.FromSeconds(5));
await this._hubContext.Clients.All.SendAsync(
await this._hubContext.Clients.All.SendAsync(
await todoService.CompleteItemAsync (item);
await todoService.InitializeStoreAsync ();
await todoService.InsertTodoItemAsync (newItem);
await todoService.RefreshDataAsync ();
await todoTable.InsertAsync (todoItem); // Insert a new TodoItem into the local database.
await todoTable.PullAsync("allTodoItems", todoTable.CreateQuery()); // query ID is used for incremental sync
await todoTable.UpdateAsync (item); // Update todo item in the local database
gamers = await FindGamersByNameAsync(gamersTable, "Mike");
if (delay > 0) await Task.Delay(delay);
Items = await todoTable
return await HandleCloudEvent(jsonContent);
return await HandleGridEvents(jsonContent);
return await HandleValidation(jsonContent);
user = await client.LoginAsync(view, MobileServiceAuthenticationProvider.Google, "la70532ma");
var bleu = await GetAsync<Gamer>(
var jsonContent = await reader.ReadToEndAsync();
var response = await _client.ReadDocumentAsync(
var result = await table.ExecuteAsync(retrieve);
var results = await cloudBlobContainer
var results = await table.ExecuteQuerySegmentedAsync(query, null); // used to be ExecuteQuery / ExecuteQueryAsync
var secret = await kvc.GetSecretAsync(
