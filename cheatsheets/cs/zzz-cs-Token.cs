                async (message, cancellationToken) => {
                await ApplicationTokenProvider.LoginSilentAsync(
await ApplicationTokenProvider.LoginSilentAsync(
                await azureServiceTokenProvider
await azureServiceTokenProvider
                    azureServiceTokenProvider1.KeyVaultTokenCallback));
                                                 blobContinuationToken);
            BlobContinuationToken blobContinuationToken = null;
                blobContinuationToken = results.ContinuationToken;
                    .GetAccessTokenAsync("https://storage.azure.com/"));
                        message.SystemProperties.LockToken);
                new AzureServiceTokenProvider();
            var azureServiceTokenProvider = 
            var azureServiceTokenProvider1 = 
            var tokenCredential = new TokenCredential(
            } while (blobContinuationToken != null); 
