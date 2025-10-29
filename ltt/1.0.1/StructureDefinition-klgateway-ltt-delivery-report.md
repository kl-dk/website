# KLGatewayLTTDeliveryReport - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGatewayLTTDeliveryReport**

## Resource Profile: KLGatewayLTTDeliveryReport 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-delivery-report | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTDeliveryReport |

 
Delivery report to deliver data for each child or youth. 

## Scope and usage

This model is used to represent the reporting of children and youth's data from the LTT service in the Danish Municipalities in Denmark.

The report is a FHIR Bundle that allows different resources to be grouped and handled as a collection. Bundle.entry references and includes each of the Resource instances. The valid resources in this bundle are the ones defined in this implementation guide. No others are allowed.

Bundle.timestamp holds the time where the bundle is collected or sent.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

| | | |
| :--- | :--- | :--- |
| indberetningsrapportIndhold | Hver af indberetningsrapportens indhold i form af ressourcer | Bundle.entry |
| indberetningsrapportTid | Tid, hvor rapporten samles eller afsendes | Bundle.timestamp |

**Usages:**

* Use this Profile: [KLGAtewayLTTIncrementalDelivery](StructureDefinition-klgateway-ltt-incremental-delivery.md)
* Examples for this Profile: [Bundle/DeliveryReport-Josefine-1](Bundle-DeliveryReport-Josefine-1.md), [Bundle/DeliveryReport-Josefine-2](Bundle-DeliveryReport-Josefine-2.md), [Bundle/DeliveryReport-Josefine-3](Bundle-DeliveryReport-Josefine-3.md), [Bundle/DeliveryReport-Josefine-4](Bundle-DeliveryReport-Josefine-4.md)...Show 4 more,[Bundle/DeliveryReport-Josefine-5-6-7](Bundle-DeliveryReport-Josefine-5-6-7.md),[Bundle/DeliveryReport-Josefine-8](Bundle-DeliveryReport-Josefine-8.md),[Bundle/DeliveryReport-Josefine-9](Bundle-DeliveryReport-Josefine-9.md)and[Bundle/RapportOmJosefine](Bundle-RapportOmJosefine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-delivery-report)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-delivery-report.csv), [Excel](StructureDefinition-klgateway-ltt-delivery-report.xlsx), [Schematron](StructureDefinition-klgateway-ltt-delivery-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-delivery-report",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-delivery-report",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTDeliveryReport",
  "title" : "KLGatewayLTTDeliveryReport",
  "status" : "active",
  "date" : "2025-10-29T22:39:09+01:00",
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
  "description" : "Delivery report to deliver data for each child or youth.",
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
        "short" : "[DK] indberetningsrapportTid",
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
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry.link",
        "path" : "Bundle.entry.link",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "short" : "[DK] indberetningsrapportIndhold",
        "min" : 1,
        "type" : [
          {
            "code" : "CarePlan",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan",
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-referral"
            ]
          },
          {
            "code" : "Patient",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
            ]
          },
          {
            "code" : "Encounter",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter"
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
        "id" : "Bundle.entry:citizen",
        "path" : "Bundle.entry",
        "sliceName" : "citizen",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:citizen.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:citizen.search",
        "path" : "Bundle.entry.search",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:citizen.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:citizen.response",
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
