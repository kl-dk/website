# Lettilgængeligt Tilbud - Deltagere i kontakt - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lettilgængeligt Tilbud - Deltagere i kontakt**

## ValueSet: Lettilgængeligt Tilbud - Deltagere i kontakt 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-participants | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:LTTParticipantTypes |

 
Participants 

 **References** 

* [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)

### Logical Definition (CLD)

* Include codes from[`http://fhir.kl.dk/term/CodeSystem/CareSocialCodes`](http://fhir.kl.dk/term/2.3.0/CodeSystem-CareSocialCodes.html)version 📦2.3.0 where concept descends from [880028ec-5f16-4242-ba53-57a902094d5b](http://fhir.kl.dk/term/2.3.0/CodeSystem-CareSocialCodes.html#CareSocialCodes-880028ec-5f16-4242-ba53-57a902094d5b)

 

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
  "id" : "fkgateway-ltt-type-of-participants",
  "url" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-participants",
  "version" : "1.0.1",
  "name" : "LTTParticipantTypes",
  "title" : "Lettilgængeligt Tilbud - Deltagere i kontakt",
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
  "description" : "Participants",
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "880028ec-5f16-4242-ba53-57a902094d5b"
          }
        ]
      }
    ]
  }
}

```
