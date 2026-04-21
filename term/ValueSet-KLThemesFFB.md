# KLTemaerFFB - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTemaerFFB**

## ValueSet: KLTemaerFFB 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLThemesFFB | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLThemesFFB |

 
FFB Themes 

 **References** 

* Included into [KLInformationCodes](ValueSet-KLInformationCodes.md)

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
  "id" : "KLThemesFFB",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLThemesFFB",
  "version" : "2.4.0",
  "name" : "KLThemesFFB",
  "title" : "KLTemaerFFB",
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
  "description" : "FFB Themes",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.22",
      "concept" : [{
        "code" : "4fb78b88-d3af-4cfb-84d7-f06daf423317"
      },
      {
        "code" : "25c5c614-305f-46cd-9891-55d564fc30cf"
      },
      {
        "code" : "e1836145-0c20-4e20-971e-d62dfe4ea1a0"
      },
      {
        "code" : "a134c31d-d316-46d4-935e-e500874dbbe1"
      },
      {
        "code" : "da3f488f-1742-4d00-b247-a7d47500b36b"
      },
      {
        "code" : "3856b434-f72e-42a5-b9d1-0cc93f48434b"
      },
      {
        "code" : "c2b186f9-9c10-478e-8345-2d2c37ab4c46"
      },
      {
        "code" : "dfbe6ff6-223b-436a-b864-8ba29bda41e2"
      },
      {
        "code" : "d1495b2c-1452-4e49-8dbe-8193af5d8823"
      },
      {
        "code" : "eef71492-65f5-4297-aa95-3c3a6866ddef"
      },
      {
        "code" : "7445fb2b-0009-43d9-b49b-1b9782f2fcd9"
      },
      {
        "code" : "93433530-b85c-4d04-a4fb-5ae26cf16f1c"
      },
      {
        "code" : "740934cd-002b-4b96-b92e-b3562eed9448"
      }]
    }]
  }
}

```
