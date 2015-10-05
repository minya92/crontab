var http = require('http');
var url = require('url');
var querystring = require('querystring');

function accept(req, res) {
  res.writeHead(200, {
    'Content-Type': 'text/html',
    'Cache-Control': 'no-cache'
  });
  res.end("testApp running<br>run: crontab -e<br>and paste<br><br>SHELL=/bin/sh<br>PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin<br>* * * * * /var/crontab/bin/run testApp");
}

http.createServer(accept).listen(3333);