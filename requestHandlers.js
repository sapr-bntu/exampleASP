var querystring = require("querystring");
var fs = require("fs");
var dust = require('dust');
var sqlite3 = require('sqlite3').verbose();


function start(response) {


    //var Connection;
    //Connection = Server.CreateObject("ADODB.Connection");
    //Connection.ConnectionString = "DRIVER=SQLite3 ODBC Driver;Database=C:\\общая\\exampleASP2\\stud.s3db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0";
    //Connection.Open();

    //var Recordset = Connection.Execute("select * from students");
    //    var content;
    //Recordset.MoveFirst();
    //    while(!Recordset.EOF)
    //    {
    //    content += "<b>fam</b><br> "+Recordset.fields(1).value;
    //    Recordset.MoveNext();
    //    }
    //Connection.close
    //var fso = Server.createobject("scripting.filesystemobject");
    //var path = Server.MapPath("templates/main.html");
    //var file = fso.OpenTextFile(path);
    //var text = file.ReadAll();


    var db = new sqlite3.Database('stud.s3db');
    var content ="";
    db.each("select * from students", function(err, row) {
                content +="<b>имя</b> "+row.firstname + "<br>";
            },function(){
                var text = fs.readFileSync('templates/main.html');
                text =" "+ text;
                var compiled = dust.compile(text, "main");
                //    console.log(compiled);
                dust.loadSource(compiled);
                dust.render("main", {
                                title: "Программирование в интернет",
                                org:"БНТУ",
                                about:"О проекте",
                                contact:"Контакты",
                                project:"Программирование в интернет",
                                home:"Главная",
                                content:content
                            }, function(err, out) {
                                //  Response.Write(out);
                                response.writeHead(200, {"Content-Type": "text/html"});
                                response.write(out);
                                response.end();
                                //                    console.log("render ok ");
                            });
            });
    db.close();

}
function contact(response) {

    var content ="Котнакты";

    var text = fs.readFileSync('templates/main.html');
    text =" "+ text;
    var compiled = dust.compile(text, "main");
    //    console.log(compiled);
    dust.loadSource(compiled);
    dust.render("main", {
                    title: "Контакты",
                    org:"БНТУ",
                    about:"О проекте",
                    contact:"Контакты",
                    project:"Контакты",
                    home:"Главная",
                    content:content
                }, function(err, out) {
                    //  Response.Write(out);
                    response.writeHead(200, {"Content-Type": "text/html"});
                    response.write(out);
                    response.end();
                    //                    console.log("render ok ");
                });


}
function about(response) {

    var content ="О проекте";

    var text = fs.readFileSync('templates/main.html');
    text =" "+ text;
    var compiled = dust.compile(text, "main");
    dust.loadSource(compiled);
    dust.render("main", {
                    title: "Контакты",
                    org:"БНТУ",
                    about:"О проекте",
                    contact:"Контакты",
                    project:"Контакты",
                    home:"Главная",
                    content:content
                }, function(err, out) {
                    //  Response.Write(out);
                    response.writeHead(200, {"Content-Type": "text/html"});
                    response.write(out);
                    response.end();
                    //                    console.log("render ok ");
                });


}



exports.start = start;
exports.contact = contact;
exports.about = about;
