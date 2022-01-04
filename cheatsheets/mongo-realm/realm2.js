const DogSchema = {
    name: "Dog",
    properties: {
        _id: "number",
        name: "string",
        age: "int",
        breed: "string?"
    },
    primaryKey: '_id',
};

async function example() {
    const RealmApp = new Realm.App({ id: "<Your App ID>" });

    // MongoDB Realm offers built-in Auth to secure Syncing data
    const credentials = Realm.Credentials.anonymous();
    await RealmApp.logIn(credentials);

    // Data can be Synced with a simple configuration
    const config = {
        schema: [DogSchema],
        sync: {
            user: realmApp.currentUser,
            partitionValue: "MyPartitionValue"
        },
    };

    const realm = await Realm.open(config);

    // Realm Writes are transactional and Sync automatically
    realm.write(() => {
        realm.create("Dog", {
            name: "Princess Gracie",
            age: 6,
        });
    });

    // Data Synced onto a device can be queried locally
    const allDogs = realm.objects("Dog");
    const olderDogs = alLDogs.filtered("age > 5");
}