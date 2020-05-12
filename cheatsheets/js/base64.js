console.log(Buffer.from('H').toString('base64'));
b64Encoded = Buffer.from('Hello World!').toString('base64');
console.log(Buffer.from(b64Encoded, 'base64').toString());