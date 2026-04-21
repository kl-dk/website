# KLObservationskoder - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLObservationskoder**

## ValueSet: KLObservationskoder 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/term/ValueSet/KLObservationCodes | *Version*:2.4.0 |
| Active as of 2026-04-21 | *Computable Name*:KLObservationCodes |

 
SNOMED CT and NPU codes used in Danish municipalities 

 **References** 

* Included into [KLTargetMeasureCodes](ValueSet-KLTargetMeasureCodes.md)

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
  "id" : "KLObservationCodes",
  "url" : "http://fhir.kl.dk/term/ValueSet/KLObservationCodes",
  "version" : "2.4.0",
  "name" : "KLObservationCodes",
  "title" : "KLObservationskoder",
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
  "description" : "SNOMED CT and NPU codes used in Danish municipalities",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "446226005"
      },
      {
        "code" : "400975005"
      },
      {
        "code" : "407557002"
      },
      {
        "code" : "407555005"
      },
      {
        "code" : "271650006"
      },
      {
        "code" : "72313002"
      },
      {
        "code" : "400974009"
      },
      {
        "code" : "399304008"
      },
      {
        "code" : "407556006"
      },
      {
        "code" : "407554009"
      },
      {
        "code" : "271649006"
      },
      {
        "code" : "422119006"
      },
      {
        "code" : "429614003"
      },
      {
        "code" : "429525003"
      },
      {
        "code" : "399017001"
      },
      {
        "code" : "78564009"
      },
      {
        "code" : "444981005"
      },
      {
        "code" : "364075005"
      },
      {
        "code" : "424927000"
      },
      {
        "code" : "445541000"
      },
      {
        "code" : "425024002"
      },
      {
        "code" : "364589006"
      },
      {
        "code" : "27113001"
      },
      {
        "code" : "248334005"
      },
      {
        "code" : "276351002"
      },
      {
        "code" : "276353004"
      },
      {
        "code" : "248333004"
      },
      {
        "code" : "450738001"
      },
      {
        "code" : "1144649008"
      },
      {
        "code" : "6942003"
      },
      {
        "code" : "444714004"
      },
      {
        "code" : "443394008"
      },
      {
        "code" : "1144798005"
      },
      {
        "code" : "1144665009"
      },
      {
        "code" : "404949004"
      },
      {
        "code" : "406202006"
      },
      {
        "code" : "247752005"
      },
      {
        "code" : "301438001"
      },
      {
        "code" : "284773001"
      },
      {
        "code" : "284545001"
      },
      {
        "code" : "364624006"
      },
      {
        "code" : "285854004"
      },
      {
        "code" : "736535009"
      },
      {
        "code" : "1144655003"
      },
      {
        "code" : "420753006"
      },
      {
        "code" : "434912009"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "431314004"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "86290005"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "276885007"
      }]
    },
    {
      "system" : "urn:oid:1.2.208.176.2.1",
      "concept" : [{
        "code" : "NPU14924"
      },
      {
        "code" : "NPU10504"
      },
      {
        "code" : "NPU17997"
      },
      {
        "code" : "NPU10506"
      },
      {
        "code" : "NPU01372"
      },
      {
        "code" : "NPU03963"
      },
      {
        "code" : "NPU04207"
      },
      {
        "code" : "NPU02415"
      },
      {
        "code" : "NPU04208"
      },
      {
        "code" : "NPU03987"
      },
      {
        "code" : "NPU21578"
      },
      {
        "code" : "NPU04864"
      },
      {
        "code" : "NPU04206"
      },
      {
        "code" : "NPU03694"
      },
      {
        "code" : "NPU03697"
      },
      {
        "code" : "NPU02195"
      }]
    }]
  }
}

```
