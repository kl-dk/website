# KLYdelserFFB - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLYdelserFFB**

## ValueSet: KLYdelserFFB 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLInterventionsFFB | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLInterventionsFFB |

 
social interventions (ydelser) as defined by FFB 

 **References** 

* Included into [KLInterventions](ValueSet-KLInterventions.md)

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
  "id" : "KLInterventionsFFB",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLInterventionsFFB",
  "version" : "2.4.0",
  "name" : "KLInterventionsFFB",
  "title" : "KLYdelserFFB",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-21T22:08:40+02:00",
  "publisher" : "Kommunernes Landsforening",
  "contact" : [{
    "name" : "Kommunernes Landsforening",
    "telecom" : [{
      "system" : "url",
      "value" : "http://kl.dk"
    }]
  }],
  "description" : "social interventions (ydelser) as defined by FFB",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "72a2a2d4-5a83-4093-ba1c-7f759c132801"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "a2256d86-1cf8-4da5-be49-1f49f4335ecb"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "a1eaa022-9e5c-493c-83d3-7cc40b9df9e9"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "d8505298-6ea5-4ca8-923d-6e4451cc9a48"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "a63f7092-63d9-4cb5-ace5-655b552fdacc"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "309b778e-52ed-448a-91ae-0650a6cd8b1b"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "4ff4a2d4-4cde-4a22-bb37-ecfbd3fd9650"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "329782cf-a740-4eb7-aa7e-aaaa9a53c99e"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "21dca9cf-c238-465b-9f12-15351f51b038"
      }]
    }],
    "exclude" : [{
      "system" : "urn:oid:1.2.208.176.2.22",
      "concept" : [{
        "code" : "794ebc42-0639-46eb-aca2-40e996568578"
      }]
    }]
  }
}

```
