# BasedOnCarePlan - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BasedOnCarePlan**

## Extension: BasedOnCarePlan 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:BasedOnCarePlan |

Extension for pointing to the care plan describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)
* Examples for this Extension: [Bundle/DeliveryReport-Josefine-1](Bundle-DeliveryReport-Josefine-1.md), [Bundle/DeliveryReport-Josefine-2](Bundle-DeliveryReport-Josefine-2.md), [Bundle/DeliveryReport-Josefine-3](Bundle-DeliveryReport-Josefine-3.md), [Bundle/DeliveryReport-Josefine-4](Bundle-DeliveryReport-Josefine-4.md)...Show 6 more,[Bundle/DeliveryReport-Josefine-5-6-7](Bundle-DeliveryReport-Josefine-5-6-7.md),[Bundle/DeliveryReport-Josefine-8](Bundle-DeliveryReport-Josefine-8.md),[Bundle/DeliveryReport-Josefine-9](Bundle-DeliveryReport-Josefine-9.md),[Bundle/RapportOmJosefine](Bundle-RapportOmJosefine.md),[Bundle/TestIncrementalDelivery](Bundle-TestIncrementalDelivery.md)and[Encounter/Behandlingskontakt](Encounter-Behandlingskontakt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.csv), [Excel](StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.xlsx), [Schematron](StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-encounter-based-on-care-plan",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan",
  "version" : "1.0.1",
  "name" : "BasedOnCarePlan",
  "title" : "BasedOnCarePlan",
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
  "description" : "Extension for pointing to the care plan describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)",
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
        "short" : "BasedOnCarePlan",
        "definition" : "Extension for pointing to the care plan describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan"
            ]
          }
        ]
      }
    ]
  }
}

```
