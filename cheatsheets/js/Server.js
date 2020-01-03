/**
* Create server.
*/

var server = connect.createServer();
/**
* Handle static files.
*/

server.use(connect.static(__dirname + '/website'));

//mounting
server.use('/my-images', connect.static('/path/to/images'));

server.use(connect.query);
server.use(function (req, res) {
  // req.query.page == "5"
});

//index.html /images

server.listen(3000);
