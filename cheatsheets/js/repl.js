#!/usr/bin/env node
const repl = require('repl');

function completer(line) {
  const completions = '.help .error .exit .quit .q'.split(' ');
  const hits = completions.filter((c) => c.startsWith(line));
  // Show all completions if none found
  return [hits.length ? hits : completions, line];
}

water = 'cold';

global.log = function(tmp) {
   console.log(tmp.toUpperCase());
  }

repl.start({
  prompt: '# ',
  input: process.stdin,
  output: process.stdout,
  completer: completer
});
