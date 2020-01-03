                await QSTodoService.DefaultService.Authenticate(this);
await QSTodoService.DefaultService.Authenticate(this);
        // needed for authorization
                new KeyVaultClient.AuthenticationCallback(
		public async Task Authenticate(UIViewController view)
            // remove the following for authentication
			// this block is for authentication
				user = await client.LoginAsync(view, MobileServiceAuthenticationProvider.Google, "la70532ma");
user = await client.LoginAsync(view, MobileServiceAuthenticationProvider.Google, "la70532ma");
using Microsoft.Azure.Services.AppAuthentication;
using Microsoft.Rest.Azure.Authentication;
using Microsoft.WindowsAzure.Storage.Auth;
