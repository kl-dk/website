# KLTilstandeKoderHjemmepleje - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTilstandeKoderHjemmepleje**

## ValueSet: KLTilstandeKoderHjemmepleje 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLConditionCodesHomeCare | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLConditionCodesHomeCare |

 
Danish municipality home care condition codes (funktionsevnetilstande) 

 **References** 

* Included into [KLConditionCodes](ValueSet-KLConditionCodes.md)
* Included into [KLConditionCodesFSIII](ValueSet-KLConditionCodesFSIII.md)

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
  "id" : "KLConditionCodesHomeCare",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLConditionCodesHomeCare",
  "version" : "2.4.0",
  "name" : "KLConditionCodesHomeCare",
  "title" : "KLTilstandeKoderHjemmepleje",
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
  "description" : "Danish municipality home care condition codes (funktionsevnetilstande)",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "43c2b7f0-5e55-4627-8fcf-bdaf5a9d84ac"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1c850a09-aa49-4fae-9354-f932f13e030b"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "462f9352-0129-4d8e-8c75-a6dfed78ddcf"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "4571f168-a92a-4caf-8dc8-35f45c2a1cb4"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "86b53158-6d05-412e-ad55-2e1fa26359b3"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "J1"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "J2"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "J3"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "J4"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "J5"
      }]
    }]
  }
}

```
