# KLTypeAfObservationPåMål - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTypeAfObservationPåMål**

## ValueSet: KLTypeAfObservationPåMål 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLTargetMeasureCodes | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLTargetMeasureCodes |

 
Target measure code, that determines whether the target is expressed as a severity, change value or using another observation 

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
  "id" : "KLTargetMeasureCodes",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLTargetMeasureCodes",
  "version" : "2.4.0",
  "name" : "KLTargetMeasureCodes",
  "title" : "KLTypeAfObservationPåMål",
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
  "description" : "Target measure code, that determines whether the target is expressed as a severity, change value or using another observation",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
      "concept" : [{
        "code" : "66959f77-6e2a-4574-8423-3ff097f8b9fa"
      },
      {
        "code" : "90c48f03-f194-4b2f-ad7d-6cba1069ae48"
      }]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLObservationCodes"]
    }]
  }
}

```
