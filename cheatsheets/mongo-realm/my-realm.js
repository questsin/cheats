const DogSchema = {
    name: 'Dog',
    properties: {
      name:  'string',
      age: 'int',
    }
  };
  const realm = await Realm.open({
    schema: [Task.schema],
    sync: {
      user: realmApp.currentUser,
      partitionValue: 'myPartition',
    },
  })