
// parse base64 string
Buffer.from(string, 'base64');

// add support for __dirname on the REPL
__dirname = path.resolve(path.dirname(''));

// run a simple http file server
// install: npm install http-server -g
// then: http-server -a localhost -p 1234 ./files
