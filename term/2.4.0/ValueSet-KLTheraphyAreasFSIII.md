# KLTræningOmråderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLTræningOmråderFSIII**

## ValueSet: KLTræningOmråderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLTheraphyAreasFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLTheraphyAreasFSIII |

 
Theraphy areas (observation codes), used for documentation within physical training, physiotheraphy and occupational theraphy in Danish Municipalities as defined by FSIII 

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
  "id" : "KLTheraphyAreasFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLTheraphyAreasFSIII",
  "version" : "2.4.0",
  "name" : "KLTheraphyAreasFSIII",
  "title" : "KLTræningOmråderFSIII",
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
  "description" : "Theraphy areas (observation codes), used for documentation within physical training, physiotheraphy and occupational theraphy in Danish Municipalities as defined by FSIII",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "concept" : [{
        "code" : "7e608d37-3f3c-4374-bbc8-e317505d8bc2"
      },
      {
        "code" : "ebd91b5e-114a-48a5-90b8-d3c1fd50b72b"
      },
      {
        "code" : "ecb5e72d-40a2-4af3-9135-25974026bf02"
      },
      {
        "code" : "b9c4561d-20bc-48c9-a727-fea719424a86"
      },
      {
        "code" : "ddbd7477-9579-4a83-a3e7-74ed716a0451"
      },
      {
        "code" : "e3242303-2506-4a09-ac65-59dfd06cb489"
      },
      {
        "code" : "df62498e-7ad1-4f01-93ce-a0441f879a2c"
      },
      {
        "code" : "99b18761-88d7-44b2-915d-c64aa0b3b562"
      },
      {
        "code" : "2b11e7a0-1faf-4b45-a653-4c347f019266"
      },
      {
        "code" : "1dae1e1e-306e-48f2-b9e1-2a180301d8dd"
      },
      {
        "code" : "0337193a-b5cc-43e1-a324-fa28944bfc3b"
      },
      {
        "code" : "aec684bd-c2ea-4ff0-8eb7-6d2cf67fb863"
      }]
    }]
  }
}

```
