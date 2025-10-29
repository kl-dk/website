# KLGAtewayLTTIncrementalDelivery - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGAtewayLTTIncrementalDelivery**

## Resource Profile: KLGAtewayLTTIncrementalDelivery 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-incremental-delivery | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTIncrementalDelivery |

 
Delivery for all delivery reports made since last update (unordered). 

**Usages:**

* Examples for this Profile: [Bundle/TestIncrementalDelivery](Bundle-TestIncrementalDelivery.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-incremental-delivery)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-incremental-delivery.csv), [Excel](StructureDefinition-klgateway-ltt-incremental-delivery.xlsx), [Schematron](StructureDefinition-klgateway-ltt-incremental-delivery.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-incremental-delivery",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-incremental-delivery",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTIncrementalDelivery",
  "title" : "KLGAtewayLTTIncrementalDelivery",
  "status" : "active",
  "date" : "2025-10-29T22:49:04+01:00",
  "publisher" : "Kommunernes Landsforening",
  "contact" : [
    {
      "name" : "Kommunernes Landsforening",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://kl.dk"
        }
      ]
    }
  ],
  "description" : "Delivery for all delivery reports made since last update (unordered).",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "max" : "0"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "collection"
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1
      },
      {
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "max" : "0"
      },
      {
        "id" : "Bundle.link",
        "path" : "Bundle.link",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "short" : "Content constrained to known delivery reports",
        "min" : 1,
        "type" : [
          {
            "code" : "Bundle",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-delivery-report"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry.search",
        "path" : "Bundle.entry.search",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.signature",
        "path" : "Bundle.signature",
        "max" : "0"
      }
    ]
  }
}

```
