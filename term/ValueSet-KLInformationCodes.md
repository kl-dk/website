# KLOplysningKoder - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLOplysningKoder**

## ValueSet: KLOplysningKoder 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLInformationCodes | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLInformationCodes |

 
Information codes from FSIII and FFB (Område, Tema, Generelle oplysninger) 

 **References** 

* Included into [KLInformationGatheringInvestigationCodes](ValueSet-KLInformationGatheringInvestigationCodes.md)

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
  "id" : "KLInformationCodes",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLInformationCodes",
  "version" : "2.4.0",
  "name" : "KLInformationCodes",
  "title" : "KLOplysningKoder",
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
  "description" : "Information codes from FSIII and FFB (Område, Tema, Generelle oplysninger)",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLGeneralInformationFSIII"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLNursingAreasFSIII"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLHomeCareAreasFSIII"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLTheraphyAreasFSIII"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLPreventionAreasFSIII"]
    },
    {
      "valueSet" : ["http://fhir.kl.dk/term/ValueSet/KLThemesFFB"]
    }]
  }
}

```
