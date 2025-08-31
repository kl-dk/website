<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter-"+id+".xml");
  else if (id == "Behandlingskontakt")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/Encounter-Behandlingskontakt.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ltt/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ltt\1.0.0\crencounter.asp) .
</body>
</html>
