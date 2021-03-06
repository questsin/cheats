var os = require('os');
var http = require('http');
var url = require('url');

var server = {};
var metrics = {requests:0, connect:0, information:0, timeout:0, socket:0, aborted:0, upgrade:0, body:0, error:0, end:0};
var clients = {};
var requests = {};
var responses = {};
var consoles = {};
consoles.log = {};
consoles.info = {};
consoles.err = {};

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

http.createServer(function (request, response) {
  response.setHeader('Content-Type', 'application/json');

  requests.headers = request.headers;
  requests.method = request.method;
  requests.url = request.url;
  requests.urlparse = url.parse(request.url, true);
  requests.body = {};
  metrics.requests +=1;

  let body = [];
  request.on('error', (err) => {
    metrics.errors +=1;
    console.error(err);
  }).on('connect', (res, socket, head) => {
    metrics.connect+=1;
  }).on('information', (info) => {
    metrics.information +=1;
  }).on('timeout', () => {
    metrics.timeout +=1;
  }).on('socket', () => {
    metrics.socket +=1;
  }).on('aborted', () => {
    metrics.aborted +=1;
  }).on('upgrade', (res, socket, upgradeHead) => {
      metrics.upgrades +=1;
  }).on('data', (chunk) => {
    metrics.body+=1;
    body.push(chunk);
  }).on('end', () => {
    metrics.uptime = os.uptime();
    metrics.end +=1;
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
