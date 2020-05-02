var os = require('os');
var http = require('http');
var url = require('url');

http.createServer(function (request, response) {
  response.setHeader('Content-Type', 'application/json');
  object = {};
  object.info = {"app":"nodejs"};
  object.info.platform = os.platform();
  object.info.release = os.release();
  object.info.tmpdir = os.tmpdir();
  object.info.type = os.type();
  object.info.uptime = os.uptime();
  object.info.userInfo = os.userInfo();
  object.info.arch = process.arch;
  object.headers = request.headers;
  object.method = request.method;
  object.url = request.url;
  object.urlparse = url.parse(request.url, true);
  object.body = {};
  object.os = os;
  object.versions = process.versions;
  object.process = {};
  object.process.argv = process.argv;
  object.process.execPath = process.execPath;
  object.process.cwd = process.cwd();
  object.env = process.env;

  let body = [];
  request.on('error', (err) => {
    console.error(err);
  }).on('data', (chunk) => {
    body.push(chunk);
  }).on('end', () => {
    body = Buffer.concat(body).toString();
    object.body = body;
    response.write(JSON.stringify(object, undefined, 4));
    response.end(); //end the response
    });
}).listen(80); //the server object listens on port 8080
console.log("Server running at http://127.0.0.1:80/");
