# Azure C# dotnet

NuGet Microsoft.Azure..
using Microsoft.WindowsAzure.Storage.
`Generic`
*Account
*Client
.Parse(_connectionStrinf)
Create*
Get*
CreateIfNotExistsAsync
*Async
JsonConvert.SerializeObject(_object)

# Azure Auth
var credentials = SdkContext.AzureCredentialsFactory
    .FromServicePrincipal(clientId,
    clientSecret,
    tenantId, 
    AzureEnvironment.AzureGlobalCloud);
var azure = Microsoft.Azure.Management.Fluent.Azure
    .Configure()
    .Authenticate(credentials)
    .WithDefaultSubscription();
var credentials = SdkContext.AzureCredentialsFactory
.FromFile(Environment.GetEnvironmentVariable("AZURE_AUTH_LOCATION"));

# Azure Key Vault
string keyVaultName = Environment.GetEnvironmentVariable("KEY_VAULT_NAME");
var kvUri = "https://" + keyVaultName + ".vault.azure.net";
var client = new SecretClient(
new Uri(kvUri), 
new DefaultAzureCredential());
client.SetSecret(
secretName, 
secretValue);
KeyVaultSecret secret = client.GetSecret(
secretName);
client.StartDeleteSecret(
secretName);

# Azure batch
BatchSharedKeyCredentials
BatchClient
CloudPool pool = batchClient.PoolOperations.CreatePool(
CloudJob job = batchClient.JobOperations.CreateJob();
CloudTask task = new CloudTask(taskId, taskCommandLine);
Console.WriteLine(task.GetNodeFile(Constants.StandardOutFileName).ReadAsString());

# Storage Table
CloudStorageAccount
CloudTableClient
CloudTable
TableOperation
TableBatchOperation
TableQuery.GenerateFilterCondition

# Azure Cosmos DB
DocumentClient(new Uri(), PK))
CreateDocumentAsync
CreateDocumentQuery
ReadDocumentAsync
ReplaceDocumentAsync
UpsertDocumentAsync
DeleteDocumentAsync

# Microsoft.Azure.Storage.Blob
Storage Blob
CloudStorageAccount
CloudBlobClient
CloudBlobContainer
CloudBlockBlob
CloudPageBlob
CloudBlob
.UploadTextAsync(
DownloadToStreamAync(

[System.ComponentModel.DataAnnotations.Key]
[IsFilterable, IsSortable, IsFacetable, IsSearchable]
# AzureSearch
SearchSerivceClient(_ServiceName, new SearchCredentials(_key))
.Indexes.GetClient
SearchIndexClient
Index
Create or CreateOrUpdate
IndexAction
Indexbatch.Upload
Documents.Index
Documents.Search

# Azure Service Bus 
QueueClient(_conn, _QueueName)
SendAsync
SchueduleMessageAsync
RegisterMessagehandler()
CompleteAsync

# Trace
var telemetry = new Microsoft.ApplicationInsights.TelemetryClient();
telemetry.TrackTrace("Slow response - database01");
Trace.TraceInformation("Test message.");
// You must close or flush the trace to empty the output buffer.
Trace.Flush();
Trace.Listeners.Add(new TextWriterTraceListener("TextWriterOutput.log", "myListener"));
Trace.TraceInformation("Test message.");
// You must close or flush the trace to empty the output buffer.
Trace.Flush();


using Microsoft.Azure.Services.AppAuthentication;
using Microsoft.Azure.KeyVault;

// Instantiate a new KeyVaultClient object, with an access token to Key Vault
var azureServiceTokenProvider1 = new AzureServiceTokenProvider();
var kv = new KeyVaultClient(new KeyVaultClient.AuthenticationCallback(azureServiceTokenProvider1.KeyVaultTokenCallback));

// Optional: Request an access token to other Azure services
var azureServiceTokenProvider2 = new AzureServiceTokenProvider();
string accessToken = await azureServiceTokenProvider2.GetAccessTokenAsync("https://management.azure.com/").ConfigureAwait(false);