var server = require("./server");
var router = require("./router");
var requestHandlers = require("./requestHandlers");

var handle = {}
handle["/"] = requestHandlers.start;
handle["/start"] = requestHandlers.start;
handle["/contact"] = requestHandlers.contact;
handle["/about"] = requestHandlers.about;

server.start(router.route, handle);
