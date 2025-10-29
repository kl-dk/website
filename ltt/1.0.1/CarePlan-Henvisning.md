# Henvisning - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Henvisning**

## Example CarePlan: Henvisning

Profile: [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md)

**basedOn**: [CarePlan: status = active; intent = plan; period = 2025-05-14 08:17:00+0000 --> (ongoing)](CarePlan-Forloeb.md)

**status**: Completed

**intent**: Plan

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)

**period**: 2025-07-07 14:28:17+0000 --> (ongoing)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Andet tilbud i hjemkommune | Completed |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "Henvisning",
  "meta" : {
    "profile" : [
      "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-referral"
    ]
  },
  "basedOn" : [
    {
      "reference" : "CarePlan/Forloeb"
    }
  ],
  "status" : "completed",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/Josefine"
  },
  "period" : {
    "start" : "2025-07-07T14:28:17Z"
  },
  "activity" : [
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
              "code" : "59721d6a-71c7-4cae-954c-5997cbebd387",
              "display" : "Andet tilbud i hjemkommune"
            }
          ]
        },
        "status" : "completed"
      }
    }
  ]
}

```
