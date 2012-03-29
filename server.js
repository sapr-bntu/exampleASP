var http = require("http");
var connect = require("connect");
var url = require("url");

function start(route, handle) {

    function onRequest(request, response) {
        var pathname = url.parse(request.url).pathname;
        console.log("Request for " + pathname + " received.");
        route(handle, pathname, response, request);
    }



    var app = connect()
    .use(connect.favicon())
    .use(connect.logger('dev'))
    .use(connect.static('public'))
   // .use(connect.directory('bootstrap'))
    .use(connect.cookieParser('my secret here'))
    .use(connect.session())
    .use(onRequest);

    http.createServer(app).listen(3000);
    //console.log("Server has started.");

}

exports.start = start;
