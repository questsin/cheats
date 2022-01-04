// Your object classes are your database schema definition
const Dog = {
    name: "Dog",
    properties: {
        name: "string",
        age: "int",
        breed: "string?"
    }
};

const Person = {
    name: "Person",
    primaryKey: '_id',
    properties: {
        _id: "string",
        name: "string",
        age: "int",
        // Create relationships by pointing an Object field to another Class
        dogs: "Dog[]"
    }
};

// Open a Realm
const realm = new Realm({
    schema: [Dog, Person]
});

// persist dog to the realm with a simple write transaction
realm.write(() => {

    // Create Realm objects and use them just like regular JS objects
    const dog = realm.create("Dog");
    dog.name = "Rex";
    dog.age = 1;
});