# Lettilgængeligt Tilbud - Henvisning - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lettilgængeligt Tilbud - Henvisning**

## ValueSet: Lettilgængeligt Tilbud - Henvisning 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-referral | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:LTTTypeOfReferral |

 
Referral/Guidance to another service. 

 **References** 

* [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md)

### Logical Definition (CLD)

* Include codes from[`http://fhir.kl.dk/term/CodeSystem/LTT`](http://fhir.kl.dk/term/2.3.0/CodeSystem-LTT.html)version 📦2.3.0 where concept descends from [92aa0b05-ed46-4fd6-8009-adf97d0fc187](http://fhir.kl.dk/term/2.3.0/CodeSystem-LTT.html#LTT-92aa0b05-ed46-4fd6-8009-adf97d0fc187)

 

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
  "id" : "fkgateway-ltt-type-of-referral",
  "url" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-referral",
  "version" : "1.0.1",
  "name" : "LTTTypeOfReferral",
  "title" : "Lettilgængeligt Tilbud - Henvisning",
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
  "description" : "Referral/Guidance to another service.",
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "92aa0b05-ed46-4fd6-8009-adf97d0fc187"
          }
        ]
      }
    ]
  }
}

```
