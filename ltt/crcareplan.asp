<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan-"+id+".xml");
  else if (id == "Forloeb")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/CarePlan-Forloeb.html");
  else if (id == "Henvisning")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/CarePlan-Henvisning.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ltt/CarePlan.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from ltt#1.0.1-milestone\output\crcareplan.asp) .
</body>
</html>
