<%@ LANGUAGE="JSCRIPT"%>
<%

//Response.Write("<H1>header</H1>");
//var qu = ""+"";
//var qu = ""+Chr(34);
Response.Write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">');
Response.Write('<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
Response.Write('<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=Windows-1251">');
Response.Write("<title>Лабораторные работы группы 107518,107519</title> </head> <body>");
Response.Write("<H1>Лабораторные работы группы 107518,107519</H1>");
var Connection;
Connection = Server.CreateObject("ADODB.Connection");
Connection.ConnectionString = "DRIVER=SQLite3 ODBC Driver;Database=C:\\общая\\exampleASP\\mydb.db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0";
Connection.Open();
//conn.execute("CREATE TABLE tblAdrs ( Id INTEGER , Name VARCHAR( 100 ) )");
Connection.execute("INSERT INTO tblAdrs Values( 1, 'Abel' )");
var Recordset = Connection.Execute("select * from tblAdrs");
var itemfields=Recordset.Fields.Item(1);
//Response.Write(itemfields.GetChunk());
Connection.close
Response.Write("</body> </html>");

%>
