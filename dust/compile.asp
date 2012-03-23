    <%@LANGUAGE="JSCRIPT"%>
    <!--#INCLUDE VIRTUAL="./dust-full-0.3.0.js"-->
    
    <%
    
   
		var compiled = dust.compile("Hello {name}!", "intro");
		dust.loadSource(compiled);
	    dust.render("intro", {name: "Fred"}, function(err, out) {
	      Response.write(out);
	      });
    
    
    %>
     
<script language=jscript runat=server> 
Response.Write("Server: "+returnValue()+"<br>"); 
</script> 
 
<script language=jscript src=whatever.js></script> 
 
<script language=jscript> 
document.write("Client: "+returnValue()); 
</script>

Response.Write(fixString("Do you think that's okay with Bob?")); 
    var fso = new ActiveXObject("Scripting.FileSystemObject"); 
    var fs = fso.OpenTextFile(Server.MapPath("fixStringJS.asp")); 
    var f = fs.ReadAll(); 
    fs.close(); var fs = null; var fso = null; 
 
    f = f.replace(" runat=server",""); 
    Response.Write(f); 
    
    
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	<title>compile DUST</title>
	<script src="dust-full-0.3.0.js"></script>
	<script>
	    function compil()
	    {
		var compiled = dust.compile("Hello {name}!", "intro");
		dust.loadSource(compiled);
	    dust.render("intro", {name: "Fred"}, function(err, out) {
	      alert(out);
	      });
		//alert(compiled);
		//dust.loadSource(compiled);
	    }
	</script> 
    </head>
    <body>

	<p>
	    &nbsp;</p>
	<div style="height: 174px; width: 1036px">
	    <input id="File1" type="file" /><br />
	    <input id="File2" type="file" /><br />
	    <input id="Button1" type="button" value="compile" onclick="compil()" /></div>
	<p>
	    &nbsp;</p>
	<p>
	    &nbsp;</p>
	<p>
	    &nbsp;</p>

    </body>
    </html>
