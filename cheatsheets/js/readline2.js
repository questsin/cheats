var readline = require('readline');
var cp = require("child_process");
const homedir = require('os').homedir();

var shells = {
  "bash": {
    "cmd": "bash", "params":['/K']
  },
  "bash.exe": {
    "cmd": homedir + "\\AppData\\Local\\Programs\\Git\\bin\\bash.exe", "params":['/K']
  },  
  "powershell": {
    "cmd": "powershell.exe", "params":['/K']
  },
  "cmd": {
    "cmd": "cmd.exe", "params":['/K']
  }
}
/* var sh = false;
for (var key in shells) {
  if (shells.hasOwnProperty(key)) {
    console.log(key,shells[key].cmd, shells[key].params);
    try {
      sh = cp.spawn(shells[key].cmd, shells[key].params);
    } catch (err) {
      continue;
    }
    if (sh != false) break;
  }
}
 */
//var sh = cp.spawn("cmd.exe", ['/K']);
//var sh = cp.spawn("powershell.exe", []);
var sh = cp.spawn(homedir + "\\AppData\\Local\\Programs\\Git\\bin\\bash.exe", []);

function completer(line) {
  var completions = '.help .error .exit .quit .q'.split(' ')
  var hits = completions.filter(function(c) { return c.indexOf(line) == 0 })
  // show all completions if none found
  return [hits.length ? hits : completions, line]
}

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  completer: completer
});
rl.setPrompt('OHAI> ');
rl.prompt(true);

sh.stdout.on('data', function(data) {
  console.log(`stdout: ${data}`);
});

sh.stderr.on('data', (data) => {
  console.error(`stderr: ${data}`);
});


rl.on('line', function (cmd) {
  console.log('You just typed: '+cmd);
  try {
    //console.log(eval(cmd));
    sh.stdin.write(cmd + '\r\n');
  }
  catch(err) {
    console.log('err1');
    //console.log(err);
  }
  rl.prompt(true);
}).on('close', function() {
  process.exit(0);
});      

/* var recursiveAsyncReadLine = function () {
  rl.question('Command: ', function (answer) {
    if (answer == 'exit') //we need some base case, for recursion
      return rl.close(); //closing RL and returning from function.
    log('Got it! Your answer was: "', answer, '"');
    recursiveAsyncReadLine(); //Calling this function again to ask new question
  });
};-

recursiveAsyncReadLine(); //we have to actually start our recursion somehow */