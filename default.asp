<%@ LANGUAGE="JSCRIPT"%>
<!--#include file="dust/dust-full-0.3.0.inc"-->
<%

var Connection;
Connection = Server.CreateObject("ADODB.Connection");
Connection.ConnectionString = "DRIVER=SQLite3 ODBC Driver;Database=C:\\общая\\exampleASP2\\stud.s3db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0";
Connection.Open();
//Connection.execute("CREATE TABLE tblAdrs ( Id INTEGER , Name VARCHAR( 100 ) )");
//Connection.execute("INSERT INTO tblAdrs Values( 1, 'Abel' )");


var Recordset = Connection.Execute("select * from students");
    var content;
Recordset.MoveFirst();
    while(!Recordset.EOF)
    {
    content += "<b>fam</b><br> "+Recordset.fields(1).value;
    Recordset.MoveNext();
    }



Connection.close
var fso = Server.createobject("scripting.filesystemobject");
var path = Server.MapPath("templates/main.html");
var file = fso.OpenTextFile(path);
var text = file.ReadAll();
var compiled = dust.compile(text, "main");
dust.loadSource(compiled);
dust.render("main", {
title: "Программирование в интернет",
org:"БНТУ",
about:"О проекте",
contact:"Контакты",
project:"Программирование в интернет",
content:content
}, function(err, out) {
  Response.Write(out);
});


%>
