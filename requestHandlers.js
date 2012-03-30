var querystring = require("querystring");
var fs = require("fs");
var dust = require('dust');
var sqlite3 = require('sqlite3').verbose();

var opCount = 0;
//var content ="";
var resp;
function start(response) {






    var content ="main";
    loadDb();

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
                    project:"САПР - БНТУ",
                    home:"Главная",
                    content:content
                }, function(err, out) {
                    //  Response.Write(out);

                    response.writeHead(200, {"Content-Type": "text/html"});
                    response.write(out);
                    response.end();
                    //                    console.log("render ok ");
                });

    function loadDb()
    {
        var db = new sqlite3.Database('stud.s3db');
        db.each("select numlab from labs group by numlab", function(err, row) {//цикл 1: номера  лаб
                    console.log("лаба номер  "+row.numlab);
                    var db2 = new sqlite3.Database('stud.s3db');
                    db2.each("select link,name,idteam from labs where numlab ="+row.numlab, function(err, row2) {//цикл 2:   лабы
                                 console.log("строка $ "+row2.link+" "+row2.name+" "+row2.idteam+"  n"+row.numlab);
                                 var db3 = new sqlite3.Database('stud.s3db');
                                 db3.each("select firstname,lastname,'group' from students,teams where students.id =iduser AND idteam ="+row2.idteam, function(err, row3) {//цикл 3:   студенты
                                              console.log("пользователь $ "+row3.firstname+" "+row3.lastname);
                                          },function endDb3(){
                                              console.log("+++++++++++++++++++++");
                                              db3.close();
                                          });
                             },function endDb2(){
                                 console.log("________________________");
                                 db2.close();
                             });
                },function endDb1(){
                    db.close();
                });

        //                var conutLab = 0;
        //                  for (var i in row) // обращение к свойствам объекта по индексу
        //                      conutLab = row[i] ;

        //                  for(var index = 1;index<=conutLab;index++)
        //                  {
        //                      content += "лаба "+ index +"<br>";
        //                       var db2 = new sqlite3.Database('stud.s3db');
        //                      db2.all("select link,name,idteam from labs where numlab = "+index, function(err2, row2) {
        //                                  row2.forEach(function (row3) {

        //                                   content += " "+row3.link+" "+ row3.name+"<br>";
        //                                   console.log(" "+row3.link+" "+ row3.name+"<br>");
        //                                               });
        //                                  rend();
        //                               ///);
        //                      db2.close();
        //                              });
        //                  }
        //            });
        //    db.close();
        console.log("loadDb");
    }


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
