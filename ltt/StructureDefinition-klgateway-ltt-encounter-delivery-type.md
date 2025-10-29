# DeliveryType - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeliveryType**

## Extension: DeliveryType 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:DeliveryType |

Extension for a code that specifies some context of how a treatment is delivered to a child or youth.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)
* Examples for this Extension: [Bundle/DeliveryReport-Josefine-4](Bundle-DeliveryReport-Josefine-4.md), [Bundle/DeliveryReport-Josefine-5-6-7](Bundle-DeliveryReport-Josefine-5-6-7.md), [Bundle/RapportOmJosefine](Bundle-RapportOmJosefine.md), [Bundle/TestIncrementalDelivery](Bundle-TestIncrementalDelivery.md) and [Encounter/Behandlingskontakt](Encounter-Behandlingskontakt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-encounter-delivery-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-encounter-delivery-type.csv), [Excel](StructureDefinition-klgateway-ltt-encounter-delivery-type.xlsx), [Schematron](StructureDefinition-klgateway-ltt-encounter-delivery-type.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-encounter-delivery-type",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type",
  "version" : "1.0.1",
  "name" : "DeliveryType",
  "title" : "DeliveryType",
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
  "description" : "Extension for a code that specifies some context of how a treatment is delivered to a child or youth.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Encounter"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "DeliveryType",
        "definition" : "Extension for a code that specifies some context of how a treatment is delivered to a child or youth."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
