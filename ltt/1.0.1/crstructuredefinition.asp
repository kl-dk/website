<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition-"+id+".xml");
  else if (id == "klgateway-ltt-encounter-based-on-care-plan")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.html");
  else if (id == "klgateway-ltt-referral")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-referral.html");
  else if (id == "klgateway-ltt-incremental-delivery")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-incremental-delivery.html");
  else if (id == "klgateway-ltt-encounter-delivery-type")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-encounter-delivery-type.html");
  else if (id == "klgateway-ltt-delivery-report")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-delivery-report.html");
  else if (id == "klgateway-ltt-encounter")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-encounter.html");
  else if (id == "klgateway-ltt-citizen")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-citizen.html");
  else if (id == "klgateway-ltt-care-plan")
    Response.Redirect("http://fhir.kl.dk/ltt/1.0.1/StructureDefinition-klgateway-ltt-care-plan.html");
  else if (id == "index")
    Response.Redirect("http://fhir.kl.dk/ltt/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ltt\1.0.1\crstructuredefinition.asp) .
</body>
</html>
