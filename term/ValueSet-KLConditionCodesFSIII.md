# KLTilstandKoderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTilstandKoderFSIII**

## ValueSet: KLTilstandKoderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLConditionCodesFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLConditionCodesFSIII |

 
Danish municipality FSIII condition codes 

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
  "id" : "KLConditionCodesFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLConditionCodesFSIII",
  "version" : "2.4.0",
  "name" : "KLConditionCodesFSIII",
  "title" : "KLTilstandKoderFSIII",
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
  "description" : "Danish municipality FSIII condition codes",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionCodesHomeCare"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionCodesNursing"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionCodesTheraphy"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLConditionCodesPrevention"]
    }]
  }
}

```
