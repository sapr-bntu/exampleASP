var querystring = require("querystring");
var fs = require("fs");
var dust = require('dust');
var sqlite3 = require('sqlite3').verbose();

var opCount = 0;
var content ="";
var resp;
function start(response) {

    var db = new sqlite3.Database('stud.s3db');
    resp = response;


    db.each("select MAX(numlab) from labs", function(err, row) {
                var conutLab = 0;
                  for (var i in row) // обращение к свойствам объекта по индексу
                      conutLab = row[i] ;

                  for(var index = 1;index<=conutLab;index++)
                  {
                      content += "лаба "+ index +"<br>";
                       var db2 = new sqlite3.Database('stud.s3db');
                      db2.all("select link,name,idteam from labs where numlab = "+index, function(err2, row2) {
                                  row2.forEach(function (row3) {

                                   content += " "+row3.link+" "+ row3.name+"<br>";
                                   console.log(" "+row3.link+" "+ row3.name+"<br>");
                                               });
                                  rend();
                               ///);
                      db2.close();
                              });
                  }
            });
    db.close();

}
function rend(){
    if(opCount>0)
    {
        console.log("ok" + opCount); opCount++
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
                                        resp.writeHead(200, {"Content-Type": "text/html"});
                                        resp.write(out);
                                        resp.end();
                                        //                    console.log("render ok ");
                                    });
    }
    else
    {console.log("not" + opCount); opCount++}


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
                    project:"О проекте",
                    home:"Главная",
                    content:content
                }, function(err, out) {
                    response.writeHead(200, {"Content-Type": "text/html"});
                    response.write(out);
                    response.end();
                });


}



exports.start = start;
exports.contact = contact;
exports.about = about;
