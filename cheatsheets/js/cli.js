#!/usr/bin/env node
//const chalk = require('chalk');
//const clear = require('clear');
//const figlet = require('figlet');
//require = require('esm')(module /*, options*/ );
const fs = require('fs');
const path = require('path');

function parseArgumentsIntoOptions(rawArgs) {
    const args = arg(
      {
        '--git': Boolean,
        '--yes': Boolean,
        '--install': Boolean,
        '-g': '--git',
        '-y': '--yes',
        '-i': '--install',
      },
      {
        argv: rawArgs.slice(2),
      }
    );
    return {
      skipPrompts: args['--yes'] || false,
      git: args['--git'] || false,
      template: args._[0],
      runInstall: args['--install'] || false,
    };
   }

//export function cli() {
    const [node, script, ...params] = process.argv;
    //var args = process.argv;
    //let options = parseArgumentsIntoOptions(args);
    console.log(params);
    //console.log(options);
//}

process.stdin.resume()
process.stdin.on('data', function(data) { 
    process.stdout.write(data) }
)
process.stdout.on('error', function(err) {
  if (err.code === 'EPIPE') return process.exit()
  process.emit('error', err)
})