# KLSygeplejeOmråderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLSygeplejeOmråderFSIII**

## ValueSet: KLSygeplejeOmråderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLNursingAreasFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLNursingAreasFSIII |

 
Observation codes for the 12 nursing areas as defined by FSIII 

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
  "id" : "KLNursingAreasFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLNursingAreasFSIII",
  "version" : "2.4.0",
  "name" : "KLNursingAreasFSIII",
  "title" : "KLSygeplejeOmråderFSIII",
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
  "description" : "Observation codes for the 12 nursing areas as defined by FSIII",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "concept" : [{
        "code" : "94e9c867-fbc8-4d35-8596-e6b8765b12e8"
      },
      {
        "code" : "55670b1e-7a36-46b2-8712-b7536237f22d"
      },
      {
        "code" : "9162d29a-1c7f-4585-8145-8fb4f1a999e3"
      },
      {
        "code" : "fa6aa904-d06e-4029-b4c4-13ead04ace27"
      },
      {
        "code" : "3f00a76f-8e7b-4b13-80cc-f2ceef4e51d1"
      },
      {
        "code" : "01150cdb-6098-48ce-bb61-60967f6bcc37"
      },
      {
        "code" : "1bb534f3-e526-41a9-b9c3-6157ea19c915"
      },
      {
        "code" : "cc377732-7f14-49b7-8940-1aa07b8884e7"
      },
      {
        "code" : "25dcedb3-7149-4ef9-a2c3-be30267441fb"
      },
      {
        "code" : "045fa500-35b0-46b7-97dd-adb60888a8ea"
      },
      {
        "code" : "8c539fd9-7f31-4b4e-8b30-8298c8ab640f"
      },
      {
        "code" : "5bfe4bda-2358-41da-946e-1fdaa33d5fe8"
      },
      {
        "code" : "I9"
      },
      {
        "code" : "I2"
      },
      {
        "code" : "I11"
      },
      {
        "code" : "I1"
      },
      {
        "code" : "I5"
      },
      {
        "code" : "I7"
      },
      {
        "code" : "I4"
      },
      {
        "code" : "I8"
      },
      {
        "code" : "I3"
      },
      {
        "code" : "I12"
      },
      {
        "code" : "I10"
      },
      {
        "code" : "I6"
      }]
    }]
  }
}

```
