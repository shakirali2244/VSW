var express = require('express');
var app = express();
var server = require('http').Server(app);

jsarr = [];

io = require('socket.io')(server);

var socket = require('./lib/socket');

server.listen(3001);

//everything socket related in the /lib/socket.js
io.on('connection', function(req){
  socket.start(req);
});
