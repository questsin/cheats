### Authentication
- identity

## commands
pgrep mongod
cat ~/workspace/mongod.conf
vi mongod.conf
mongo admin --port 27001 --eval 'db.shutdownServer()'
mongo --port 27001
mongo --host localhost:27001
ls /var/mongodb/pki/1/mongod-keyfile

### Authorization
- is allowed to
- privileges 
- Principle of Least Privilege

## Roles: built-in 15
- userAdminAnyDatabase
- clusterAdmin
- userAdmin
- dbAdmin 

## privileges
changecustomData
changePassword
createRole
CreateUser
dropRole
dropUer
grantRo le
revokeRole
setAuthenticationRestriction
viewRole
viewUser


## User defined Roles

`
roles [
    {role: "read", db: ""},
    {role: "readWrite", db: ""},
]
db.getUsers()
use admin
db.createUser({
  user: "globalAdminUser",
  pwd: "5xd49$4%0bef#6c&b*d",
  roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
});
db.auth( "globalUserAdmin", "5xd49$4%0bef#6c&b*d" )
db.createUser({
  user: "clusterAdminAny",
  pwd: "a*0f7@2c6#b4f%$d6c^c7d",
  roles: [ "clusterAdmin" ]
});
db.grantRolesToUser(
   "inventoryAdminUser",
   [ { role: "userAdmin", db: "inventory" } ]
)
db.getRoles()
db.createRole(
 {
   role: "grantRevokeRolesAnyDatabase",
   privileges: [
     {
        resource: { db: "", collection: "" },
        actions: [ "grantRole", "revokeRole", "viewRole" ]
     }
   ],
   roles: []
 }
)
`
### Atlas
- Atlas User

### Client App
- Client App User


### ToDo
- Atlas Realm White lists?
- Auth0 Users with least privilage
- 