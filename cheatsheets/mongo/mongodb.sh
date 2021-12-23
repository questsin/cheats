sudo systemctl status mongodb
sudo apt-get install -y mongodb

sudo service mongod start
sudo service mongod stop

mongodump --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"

mongoexport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --collection=sales --out=sales.json

mongorestore --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies"  --drop dump

mongoimport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_supplies" --drop sales.json

​​mongo "mongodb+srv://user:password@sandbox.yre5y.mongodb.net/myFirstDatabase" 

​​mongo "mongodb+srv://username: m001-student
:m001-mongodb-basics@sandbox.yre5y.mongodb.net/sample_supplies"

mongo --host localhost:27017

show dbs
#admin, local are defaults

use testdb
db.createCollection("user")
show collections
show tables
db.getCollectionNames()
db.user.insert({"name": "Ajitesh Shukla", "location": "hyderabad", "username": "eajitesh"})
db.user.find().count()
db.user.find().pretty()
db.user.find({"username": "eajitesh"})
db.user.find({"username": "eajitesh", "location": "hyderabad"})
db.user.drop()

db.createUser({"user": "ajitesh", "pwd": "gurukul", "roles": ["readWrite", "dbAdmin"]})

show users
mongo -u USERNAME -p PASSWORD --authenticationDatabase DATABASENAME

mongo -u ajitesh -p gurukul --authenticationDatabase testdb
