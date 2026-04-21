# KLBorgervurderingsObservationskoderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLBorgervurderingsObservationskoderFSIII**

## ValueSet: KLBorgervurderingsObservationskoderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLCitizenObservationCodesFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLCitizenObservationCodesFSIII |

 
Observation codes for citizens own observations as defined by FSIII 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "KLCitizenObservationCodesFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLCitizenObservationCodesFSIII",
  "version" : "2.4.0",
  "name" : "KLCitizenObservationCodesFSIII",
  "title" : "KLBorgervurderingsObservationskoderFSIII",
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
  "description" : "Observation codes for citizens own observations as defined by FSIII",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "concept" : [{
        "code" : "d6d48a71-b96f-4b88-86f9-b13bd3c03560"
      },
      {
        "code" : "687159ad-a61c-47c0-a878-53aa54bae2d5"
      },
      {
        "code" : "C"
      },
      {
        "code" : "D"
      }]
    }]
  }
}

```
