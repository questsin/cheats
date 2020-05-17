var glob = require("glob")

// options is optional
glob("**/*.js", null, function (er, files) {
    console.log(er);
    console.log(files);
})