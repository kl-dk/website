# KLBetydningKoderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLBetydningKoderFSIII**

## ValueSet: KLBetydningKoderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLImportanceLevelCodesFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLImportanceLevelCodesFSIII |

 
Importance level codes (Betydning), as evaluated by the citizen 

 **References** 

* Included into [KLCitizenObservationResultCodesFSIII](ValueSet-KLCitizenObservationResultCodesFSIII.md)

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
  "id" : "KLImportanceLevelCodesFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLImportanceLevelCodesFSIII",
  "version" : "2.4.0",
  "name" : "KLImportanceLevelCodesFSIII",
  "title" : "KLBetydningKoderFSIII",
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
  "description" : "Importance level codes (Betydning), as evaluated by the citizen",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "687159ad-a61c-47c0-a878-53aa54bae2d5"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "D"
      }]
    }]
  }
}

```
