# Forloeb - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Forloeb**

## Example CarePlan: Forloeb

Profile: [KLGatewayLTTCarePlan](StructureDefinition-klgateway-ltt-care-plan.md)

**status**: Active

**intent**: Plan

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)

**period**: 2025-05-14 08:17:00+0000 --> (ongoing)

> **activity**
> **detail****code**:Lettilgængelige tilbud til børn og unge i psykisk mistrivsel**reasonCode**:Krop og mad,Selvskade**status**: In Progress



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "Forloeb",
  "meta" : {
    "profile" : [
      "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan"
    ]
  },
  "status" : "active",
  "intent" : "plan",
  "subject" : {
    "reference" : "Patient/Josefine"
  },
  "period" : {
    "start" : "2025-05-14T08:17:00Z"
  },
  "activity" : [
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
              "code" : "01302bcb-c7f3-42c4-8ded-68e33da064eb",
              "display" : "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
            }
          ]
        },
        "reasonCode" : [
          {
            "coding" : [
              {
                "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
                "code" : "bf4df811-805a-4309-8394-7d9ea31b8af7",
                "display" : "Krop og mad"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
                "code" : "5cea8eb2-5374-45f7-a985-cef1f577f0a1",
                "display" : "Selvskade"
              }
            ]
          }
        ],
        "status" : "in-progress"
      }
    }
  ]
}

```
