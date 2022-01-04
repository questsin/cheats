https://docs.mongodb.com/realm/get-started/introduction-web/
https://docs.mongodb.com/realm/tutorial/web-graphql/
https://docs.mongodb.com/realm/web/quickstart/#std-label-web-quick-start
https://github.com/mongodb-university/realm-tutorial
https://github.com/mongodb-university/realm-tutorial-web

### MongoDB Realm 
- serverless application backend (BEaaS)
- User Auth and Management
- User Authentication and Management
- Schema Validation
- Data Access Rules
- Event-Driven Serverless Functions
- Secure Client-Side Queries
- GraphQL for MongoDB
- Client-Side MongoDB Queries
- role based collection rules
- #rd Party Services (twilio, aws)
- realm sync ~aws appsync


### Realm Functions
- MongoDB Triggers
- HTTPS endpoints that execute a function in response to external applications.

## examples
async function linkAccounts(user, email, password) {
  const emailPasswordUserCredentials = Realm.Credentials.emailPassword(
    email,
    password
  );
  await user.linkCredentials(emailPasswordUserCredentials);
}
const summed = await user.functions.sum(2,3);

### commands
npm install -g mongodb-realm-cli
realm-cli --version
realm-cli login --api-key @publickey --private-api-key @privatekey
