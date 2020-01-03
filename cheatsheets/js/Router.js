// Load the node-router library by creationix
var server = require('node-router').getServer();

// Configure our HTTP server to respond with Hello World the root request
server.get("/", function (request, response) {
  response.simpleText(200, "Hello World!");
});

// Listen on port 8080 on localhost
server.listen(8000, "localhost");


// Routes
//app.get('/', routes.index);

//app.get('/form', function(req, res) {
//  fs.readFile('./form.html', function(error, content) {
//    if (error) {
//      res.writeHead(500);
//      res.end();
//    }
//    else {
//      res.writeHead(200, { 'Content-Type': 'text/html' });
//      res.end(content, 'utf-8');
//    }
//  });
//});
//The methods Express adds to the server are get, put, post, del, patch, and head, matching HTTP verbs GET, PUT, POST, DELETE, PATCH, and HEAD, respectively. The following are examples of route definitions with them:

app.get('/', function (req, res, next) {});
app.put('/post/:name', function (req, res, next) {});
app.post('/signup', function (req, res, next) {});
app.del('/user/:id', function (req, res, next) {});
app.patch('/user/:id', function (req, res, next) {});
app.head('/user/:id', function (req, res, next) {});
