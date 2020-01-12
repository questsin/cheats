//cd ~
//mkdir countdownExpressApp
//cd countdownExpressApp
//npx express-generator
//npx express-generator --pug --css
var express = require('express');
var app = express();

app.get('/', (req, res) => res.send('Hello World!'));
 
app.listen(3000);