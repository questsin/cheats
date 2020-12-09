#!/usr/bin/env node
const repl = require('repl');

water = 'cold';

global.log = function(tmp) {
   console.log(tmp.toUpperCase());
  }

repl.start({
  prompt: '# ',
  input: process.stdin,
  output: process.stdout
});
