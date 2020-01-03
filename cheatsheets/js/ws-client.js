const WebSocket = require('ws');

const ws = new WebSocket('wss://127.0.0.1');

ws.on('open', function open() {
  ws.send('something');
});

ws.on('message', function incoming(data) {
  console.log(data);
});
