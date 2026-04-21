# KLTilstandADKoderFFB - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTilstandADKoderFFB**

## ValueSet: KLTilstandADKoderFFB 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLConditionADCodesFFB | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLConditionADCodesFFB |

 
Danish municipality FFB condition codes for Activities and Participation 

 **References** 

* Included into [KLConditionCodesFFB](ValueSet-KLConditionCodesFFB.md)

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
  "id" : "KLConditionADCodesFFB",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLConditionADCodesFFB",
  "version" : "2.4.0",
  "name" : "KLConditionADCodesFFB",
  "title" : "KLTilstandADKoderFFB",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-21T22:00:20+02:00",
  "publisher" : "Kommunernes Landsforening",
  "contact" : [{
    "name" : "Kommunernes Landsforening",
    "telecom" : [{
      "system" : "url",
      "value" : "http://kl.dk"
    }]
  }],
  "description" : "Danish municipality FFB condition codes for Activities and Participation",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "3856b434-f72e-42a5-b9d1-0cc93f48434b"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "dfbe6ff6-223b-436a-b864-8ba29bda41e2"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "c2b186f9-9c10-478e-8345-2d2c37ab4c46"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "eef71492-65f5-4297-aa95-3c3a6866ddef"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "da3f488f-1742-4d00-b247-a7d47500b36b"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.22",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "d1495b2c-1452-4e49-8dbe-8193af5d8823"
      }]
    }]
  }
}

```
