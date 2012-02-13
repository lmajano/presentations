var http        = require('http');
var sockjs      = require('sockjs');
var amqp        = require('amqp');
var node_static = require('node-static');
var util        = require('util');

var sockjs_opts = {sockjs_url: "http://cdn.sockjs.org/sockjs-0.2.min.js"};

// Sock JS Server
var stocks_server = sockjs.createServer(sockjs_opts);


