const config = {};

config.endpoint = "wss://endpoint.gremlin.cosmos.azure.com:443";
config.authKey =
  "slZk8ETEWB9preGsM9gIWKG9Jmr8T6DqY5BMsnNym4Q4Wgj3t2Z9gC5olfdvc7wX9kTrPcShQmxwjGiDCYWBKw==";
config.database = "sample-database";
config.collection = "sample-graph";

module.exports = config;const Gremlin = require("gremlin");
const config = require("./config");

if (process.argv.length < 3) {
  console.log("Please enter a Gremlin/Graph Query");
  return;
}

(async () => {
  const authenticator = new Gremlin.driver.auth.PlainTextSaslAuthenticator(
    `/dbs/${config.database}/colls/${config.collection}`,
    config.authKey
  );

  const client = new Gremlin.driver.Client(config.endpoint, {
    authenticator,
    traversalsource: "g",
    rejectUnauthorized: true,
    mimeType: "application/vnd.gremlin-v2.0+json"
  });

  try {
    const result = await client.submit(process.argv[2]);
    console.log(`{"Returned": "${result.length}"}`);
  } catch (e) {
    console.error(e);
  } finally {
    await client.close();
  }
})();