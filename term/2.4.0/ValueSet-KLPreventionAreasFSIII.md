# KLForebyggelseOmråderFSIII - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLForebyggelseOmråderFSIII**

## ValueSet: KLForebyggelseOmråderFSIII 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLPreventionAreasFSIII | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLPreventionAreasFSIII |

 
Prevention areas (observation codes), used for documentation within prevention and health promotion 

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
  "id" : "KLPreventionAreasFSIII",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLPreventionAreasFSIII",
  "version" : "2.4.0",
  "name" : "KLPreventionAreasFSIII",
  "title" : "KLForebyggelseOmråderFSIII",
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
  "description" : "Prevention areas (observation codes), used for documentation within prevention and health promotion",
  "compose" : {
    "include" : [{
      "system" : "urn:oid:1.2.208.176.2.21",
      "concept" : [{
        "code" : "d03da587-94dc-46e6-ba71-eb1e43ec7df6"
      },
      {
        "code" : "7b3b3587-4ddd-4b93-a81b-455bfc601492"
      },
      {
        "code" : "b349c7ec-86c5-4c52-aaf2-9034d98b0e3b"
      },
      {
        "code" : "3547a306-8623-4713-a8ce-db1e82839c50"
      }]
    }]
  }
}

```
