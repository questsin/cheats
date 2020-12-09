var readline = require('readline');
//var cp = require("child_process");
//var sh = cp.spawn("cmd", []);

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

//sh.stdout.on('data', function(data) {
//  console.log(`stdout: ${data}`);
//});

//sh.stderr.on('data', (data) => {
//  console.error(`ps stderr: ${data}`);
//});


rl.on('line', function (cmd) {
  console.log('You just typed: '+cmd);
  try {
    console.log(eval(cmd));
    //sh.stdin.write(cmd);
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