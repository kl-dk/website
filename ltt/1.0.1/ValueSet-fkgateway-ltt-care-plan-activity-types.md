# Lettilgængeligt Tilbud - Forløbskoder - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lettilgængeligt Tilbud - Forløbskoder**

## ValueSet: Lettilgængeligt Tilbud - Forløbskoder 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-care-plan-activity-types | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:LTTCarePlanActivityTypes |

 
Types of careplan acitivities in LTT 

 **References** 

* [KLGatewayLTTCarePlan](StructureDefinition-klgateway-ltt-care-plan.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fkgateway-ltt-care-plan-activity-types",
  "url" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-care-plan-activity-types",
  "version" : "1.0.1",
  "name" : "LTTCarePlanActivityTypes",
  "title" : "Lettilgængeligt Tilbud - Forløbskoder",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-29T22:39:09+01:00",
  "publisher" : "Kommunernes Landsforening",
  "contact" : [
    {
      "name" : "Kommunernes Landsforening",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://kl.dk"
        }
      ]
    }
  ],
  "description" : "Types of careplan acitivities in LTT",
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
        "concept" : [
          {
            "code" : "01302bcb-c7f3-42c4-8ded-68e33da064eb",
            "display" : "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
          }
        ]
      }
    ]
  }
}

```
