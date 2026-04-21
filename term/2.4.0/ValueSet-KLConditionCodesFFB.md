# KLTilstandKoderFFB - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTilstandKoderFFB**

## ValueSet: KLTilstandKoderFFB 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLConditionCodesFFB | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLConditionCodesFFB |

 
Danish municipality FFB condition codes 

 **References** 

* Included into [KLConditionCodes](ValueSet-KLConditionCodes.md)
* Included into [KLConditionsAndTargetGroupsFFB](ValueSet-KLConditionsAndTargetGroupsFFB.md)

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
  "id" : "KLConditionCodesFFB",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLConditionCodesFFB",
  "version" : "2.4.0",
  "name" : "KLConditionCodesFFB",
  "title" : "KLTilstandKoderFFB",
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
  "description" : "Danish municipality FFB condition codes",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionFFCodesFFB"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionADCodesFFB"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionOCodesFFB"]
    }]
  }
}

```
