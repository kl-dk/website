# KLTilbudsKoderFFB - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTilbudsKoderFFB**

## ValueSet: KLTilbudsKoderFFB 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLServiceCodesFFB | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLServiceCodesFFB |

 
Social service (tilbud) as defined by FFB 

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
  "id" : "KLServiceCodesFFB",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLServiceCodesFFB",
  "version" : "2.4.0",
  "name" : "KLServiceCodesFFB",
  "title" : "KLTilbudsKoderFFB",
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
  "description" : "Social service (tilbud) as defined by FFB",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.22",
      "concept" : [{
        "code" : "9401777d-bdc5-4f52-9804-63c8cae9a792"
      },
      {
        "code" : "a0fb02a2-367c-48bc-bacd-92e49a861a4c"
      },
      {
        "code" : "25de7444-3919-4dab-b844-8cec6c15f30e"
      },
      {
        "code" : "498fe92c-d7f7-41cd-9404-5b38fe113be0"
      },
      {
        "code" : "070016aa-e164-4813-aca5-b75acab89d63"
      },
      {
        "code" : "d90f4da6-f87a-43b5-833f-646b4baf16d6"
      },
      {
        "code" : "a7cbf55b-6906-4b2a-872e-c48b4d728837"
      },
      {
        "code" : "5ea75f09-8eec-4edc-aafd-a330a523c33e"
      }]
    }]
  }
}

```
