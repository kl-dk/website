<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle-"+id+".xml");
  else if (id == "RapportOmJosefine")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-RapportOmJosefine.html");
  else if (id == "DeliveryReport-Josefine-1")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-1.html");
  else if (id == "DeliveryReport-Josefine-2")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-2.html");
  else if (id == "DeliveryReport-Josefine-3")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-3.html");
  else if (id == "DeliveryReport-Josefine-4")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-4.html");
  else if (id == "DeliveryReport-Josefine-5-6-7")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-5-6-7.html");
  else if (id == "DeliveryReport-Josefine-8")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-8.html");
  else if (id == "DeliveryReport-Josefine-9")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-DeliveryReport-Josefine-9.html");
  else if (id == "TestIncrementalDelivery")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/Bundle-TestIncrementalDelivery.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ltt/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ltt\1.0.1\crbundle.asp) .
</body>
</html>
