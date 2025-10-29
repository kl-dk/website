# Lettilgængeligt Tilbud - Leveringstype - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lettilgængeligt Tilbud - Leveringstype**

## ValueSet: Lettilgængeligt Tilbud - Leveringstype 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-delivery | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:LTTDeliveryTypes |

 
Delivery types 

 **References** 

* [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)

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
  "id" : "fkgateway-ltt-type-of-delivery",
  "url" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-delivery",
  "version" : "1.0.1",
  "name" : "LTTDeliveryTypes",
  "title" : "Lettilgængeligt Tilbud - Leveringstype",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-29T22:49:04+01:00",
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
  "description" : "Delivery types",
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
        "concept" : [
          {
            "code" : "2865f123-15a7-4a36-a514-32ea37c400ca",
            "display" : "Gruppebaseret indsats"
          },
          {
            "code" : "8d12d74c-17da-47a7-a4fe-e69dbaec0a8c",
            "display" : "Individuel indsats"
          }
        ]
      }
    ]
  }
}

```
