<%@ LANGUAGE="JSCRIPT"%>
<%

//Response.Write("<H1>header</H1>");
//var qu = ""+"";
//var qu = ""+Chr(34);
Response.Write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">\n');
Response.Write(' <html>\n <head>\n  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">\n');
Response.Write(" <title>Лабораторные работы группы 107518,107519</title>\n </head>\n <body>\n");
Response.Write("<H1>Лабораторные работы группы 107518,107519</H1>\n");
var Connection;
Connection = Server.CreateObject("ADODB.Connection");
Connection.ConnectionString = "DRIVER=SQLite3 ODBC Driver;Database=C:\\общая\\exampleASP\\mydb.db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0";
Connection.Open();
//Connection.execute("CREATE TABLE tblAdrs ( Id INTEGER , Name VARCHAR( 100 ) )");
//Connection.execute("INSERT INTO tblAdrs Values( 1, 'Abel' )");


//var Recordset = Connection.Execute("select * from tblAdrs");
//Recordset.MoveFirst();
Response.Write("1\n");
//Response.Write("nmae "+Recordset.fields(0).name+"value "+Recordset.fields(0).value);


Connection.close

Response.Write(" </body>\n </html>");

%>
