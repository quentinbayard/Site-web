var http = require('http');
var url = require("url");

var server = http.createServer(function(req, res) {
  res.writeHead(200, {"Content-Type": "text/html"});
  var http = require('http');
  var page = url.parse(req.url).pathname;
  console.log(page);
  if (page == '/') {
  	res.write('<!DOCTYPE html>'+
'<html>'+
'    <head>'+
'        <meta charset="utf-8" />'+
'        <title>Ma page Node.js !</title>'+
'    </head>'+ 
'    <body>'+
'     	<p>Voici un paragraphe <strong>HTML</strong> !</p>'+
'    </body>'+
'</html>');
  }
  else {
   res.write('error 404 not found');
}
	res.end();
});
server.listen(8080);