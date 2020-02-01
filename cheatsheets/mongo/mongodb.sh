sudo systemctl status mongodb
sudo apt-get install -y mongodb

sudo service mongod start
sudo service mongod stop

mongo --host localhost:27017

show dbs

use testdb
db.createCollection("user")
show collections
show tables
db.getCollectionNames()
db.user.insert({"name": "Ajitesh Shukla", "location": "hyderabad", "username": "eajitesh"})
db.user.find()
db.user.find().pretty()
db.user.find({"username": "eajitesh"})
db.user.find({"username": "eajitesh", "location": "hyderabad"})
db.user.drop()

db.createUser({"user": "ajitesh", "pwd": "gurukul", "roles": ["readWrite", "dbAdmin"]})

show users
mongo -u USERNAME -p PASSWORD --authenticationDatabase DATABASENAME

mongo -u ajitesh -p gurukul --authenticationDatabase testdb
