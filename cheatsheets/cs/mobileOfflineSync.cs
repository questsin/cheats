MobileServiceClient Client { get; set; }

IMobileServiceSyncTable<Contact> table;

public async Task Initialize() {

    if (Client?.SyncContext?.IsInitialized ?? false) // if client is available, AND if it has an synccontext which is initialized, then exit method
        return;

    // otherwise, put them together:

    var azureUrl = "www.my.azure.url";

    // Create the client
    Client = new MobileServiceClient(azureUrl);

    // Init db for local path - offline sync mode
    var path = "contacts.db";
    path = Path.Combine(MobileServiceClient.DefaultDatabasePath, path);

    // setup local sqlite store and init table - sqlite is the default...
    var store = new MobileServiceSQLiteStore(path);

    // table definition via ORM
    store.DefineTable<Contact>();

    // Init Sync Context for on- and offline sync as "traffic controller" for syncing data
    **await Client.SyncContext.InitializeAsync(store, new MobileServiceSyncHandler());**

    table = Client.GetSyncTable<Contact>();

}


public async Task SyncContacts() {
    try {
        await Client.SyncContext.PushAsync();
        await table.PullAsync("allContacts", table.CreateQuery());
    }
    catch (Exception exep) {
        Debug.WriteLine("Sync failed, cuz of: " + exep);

    }
}

public async Task<List<Contact>> getContacts() {
    await Initialize();
    await SyncContacts(); // syncing tables before querien the local db

    return await table.ToListAsync();


}


public async Task InsertContacts(List<Contact> contacts) {

    await Initialize();

    await Task.WhenAll( // await till all Insert-Operations are done
            contacts.Select(contact => table.InsertAsync(contact))
        );

    await SyncContacts(); // then sync content