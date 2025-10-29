# Lettilgængeligt Tilbud - Kontakttyper - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lettilgængeligt Tilbud - Kontakttyper**

## ValueSet: Lettilgængeligt Tilbud - Kontakttyper 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-encounter-types | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:LTTEncounterTypes |

 
Types of encounters in LTT 

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
  "id" : "fkgateway-ltt-encounter-types",
  "url" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-encounter-types",
  "version" : "1.0.1",
  "name" : "LTTEncounterTypes",
  "title" : "Lettilgængeligt Tilbud - Kontakttyper",
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
  "description" : "Types of encounters in LTT",
  "compose" : {
    "include" : [
      {
        "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
        "concept" : [
          {
            "code" : "afd9445a-7ca5-42f8-8011-c3802db3f30b",
            "display" : "Afsluttende samtale"
          },
          {
            "code" : "3b1d8884-5a1d-43cf-aabb-8c1035148c46",
            "display" : "Afslutning"
          },
          {
            "code" : "ac1057da-a510-4bab-a2b1-d96efa464bdc",
            "display" : "Henvendelse"
          },
          {
            "code" : "e2eee938-a58c-42d0-a514-dc91779b1243",
            "display" : "Forsamtale"
          },
          {
            "code" : "404665f4-3488-4225-953e-3f1c5a061829",
            "display" : "Screening"
          },
          {
            "code" : "b7f9217c-2315-4d6f-bba5-5117e202302c",
            "display" : "Behandling"
          }
        ]
      }
    ]
  }
}

```
