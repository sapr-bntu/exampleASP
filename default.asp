<%@ LANGUAGE="JSCRIPT"%>
<%

//Response.Write("<H1>header</H1>");
//var qu = ""+"";
//var qu = ""+Chr(34);
Response.Write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">');
//Response.Write('<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">');
Response.Write('<html> <head> <meta http-equiv="Content-Type" content="text/html; charset=Windows-1251">');
Response.Write("<title>Лабораторные работы группы 107517</title> </head> <body>");
Response.Write("<H1>Лабораторные работы группы 107517</H1>");

//первый коннект к  таблице №1 и в нем откравется цикл
var ConnectionString, Connection, Recordset;
//ConnectionString = "Driver=SQLite3 ODBC Driver;Database=test.s3db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0;";
ConnectionString = "DSN=ds";
Connection = Server.CreateObject("ADODB.Connection")
Connection.Open(ConnectionString); 

Recordset = Connection.Execute("select * from html")
Response.Write("</body> </html>");

%>
