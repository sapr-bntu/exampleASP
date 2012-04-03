<%@ LANGUAGE="JSCRIPT"%>
<!--#include file="dust/dust-full-0.3.0.inc"-->
<%

var Connection;
Connection = Server.CreateObject("ADODB.Connection");
Connection.ConnectionString = "DRIVER=SQLite3 ODBC Driver;Database=C:\\общая\\exampleASP2\\stud.s3db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0";
Connection.Open();
//Connection.execute("CREATE TABLE tblAdrs ( Id INTEGER , Name VARCHAR( 100 ) )");
//Connection.execute("INSERT INTO tblAdrs Values( 1, 'Abel' )");


var Recordset1 = Connection.Execute("select numlab from labs group by numlab");
    var content="";
    Recordset1.MoveFirst();
    while(!Recordset1.EOF)
    {
        content += "<b>num</b> "+Recordset1.fields(0).value+"<br>";
        var Recordset2 = Connection.Execute("select link,name,idteam from labs where numlab ="+Recordset1.fields(0).value);
        while(!Recordset2.EOF)
        {   
            content += "<b>link</b> "+Recordset2.fields(0).value+"<br>";
            var Recordset3 = Connection.Execute("select firstname,lastname,'group' from students,teams where students.id =iduser AND idteam ="+Recordset2.fields(2).value);
            while(!Recordset3.EOF)
            {
                content += "<b>fam</b> "+Recordset3.fields(0).value;
                Recordset3.MoveNext();
            }
            content += "<br>";
            Recordset2.MoveNext();
        }
        Recordset1.MoveNext();
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
home:"Главная",
content:content
}, function(err, out) {
  Response.Write(out);
});


%>
