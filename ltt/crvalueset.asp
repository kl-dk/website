<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet-"+id+".xml");
  else if (id == "fkgateway-ltt-type-of-participants")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-type-of-participants.html");
  else if (id == "fkgateway-ltt-focus-area")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-focus-area.html");
  else if (id == "fkgateway-ltt-encounter-class-codes")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-encounter-class-codes.html");
  else if (id == "fkgateway-ltt-type-of-delivery")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-type-of-delivery.html");
  else if (id == "fkgateway-ltt-encounter-types")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-encounter-types.html");
  else if (id == "fkgateway-ltt-type-of-referral")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-type-of-referral.html");
  else if (id == "fkgateway-ltt-care-plan-activity-types")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.0/ValueSet-fkgateway-ltt-care-plan-activity-types.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ltt/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from ltt#1.0.0-milestone\output\crvalueset.asp) .
</body>
</html>
