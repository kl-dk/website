# KLSygeplejeIndsatserFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLSygeplejeIndsatserFSIII**

## ValueSet: KLSygeplejeIndsatserFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLNursingInterventionsFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLNursingInterventionsFSIII |

 
Nursing interventions as described by FSIII 

 **References** 

* Included into [KLInterventions](ValueSet-KLInterventions.md)
* Included into [KLInterventionsFSIII](ValueSet-KLInterventionsFSIII.md)

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
  "id" : "KLNursingInterventionsFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLNursingInterventionsFSIII",
  "version" : "2.4.0",
  "name" : "KLNursingInterventionsFSIII",
  "title" : "KLSygeplejeIndsatserFSIII",
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
  "description" : "Nursing interventions as described by FSIII",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "993d8f7b-fbed-4a78-90d9-6efbfa835114"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "ff47f955-3179-446f-b211-dc29de9456e3"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "G1"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.21",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "G2"
      }]
    }]
  }
}

```
