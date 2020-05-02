var os = require('os');
var http = require('http');
var url = require('url');

var server = {};
var metrics = {};
var clients = {};
var requests = {};
var responses = {};
var consoles = {};
consoles.log = {};
consoles.info = {};
consoles.err = {};

http.createServer(function (request, response) {
  response.setHeader('Content-Type', 'application/json');
  server.info = {"app":"nodejs"};
  server.info.platform = os.platform();
  server.info.release = os.release();
  server.info.tmpdir = os.tmpdir();
  server.info.type = os.type();
  server.info.uptime = os.uptime();
  server.info.userInfo = os.userInfo();
  server.info.arch = process.arch;
  server.os = os;
  server.versions = process.versions;
  server.process = {};
  server.process.argv = process.argv;
  server.process.execPath = process.execPath;
  server.process.cwd = process.cwd();
  server.env = process.env;

  requests.headers = request.headers;
  requests.method = request.method;
  requests.url = request.url;
  requests.urlparse = url.parse(request.url, true);
  requests.body = {};

  let body = [];
  request.on('error', (err) => {
    console.error(err);
  }).on('data', (chunk) => {
    body.push(chunk);
  }).on('end', () => {
    body = Buffer.concat(body).toString();
    requests.body = body;
    object = {};
    object.server = server;
    object.metrics = metrics;
    object.requests = requests;
    object.responses = responses;
    object.clients = clients;
    object.consoles = consoles;
    response.write(JSON.stringify(object, undefined, 4));
    response.end(); //end the response
    });
}).listen(80); //the server object listens on port 8080
console.log("Server running at http://127.0.0.1:80/");
