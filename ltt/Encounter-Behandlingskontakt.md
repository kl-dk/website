# Behandlingskontakt - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Behandlingskontakt**

## Example Encounter: Behandlingskontakt

Profile: [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)

**BasedOnCarePlan**: [CarePlan: status = active; intent = plan; period = 2025-05-14 08:17:00+0000 --> (ongoing)](CarePlan-Forloeb.md)

**DeliveryType**: Individuel indsats

**status**: Finished

**class**: [ActCode AMB](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB): ambulatory

**type**: Behandling

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)

### Participants

| | |
| :--- | :--- |
| - | **Type** |
| * | Barn/ung deltager |

**period**: 2025-07-07 13:28:17+0000 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Behandlingskontakt",
  "meta" : {
    "profile" : [
      "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter"
    ]
  },
  "extension" : [
    {
      "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan",
      "valueReference" : {
        "reference" : "CarePlan/Forloeb"
      }
    },
    {
      "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
            "code" : "8d12d74c-17da-47a7-a4fe-e69dbaec0a8c",
            "display" : "Individuel indsats"
          }
        ]
      }
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://fhir.kl.dk/term/CodeSystem/LTT",
          "code" : "b7f9217c-2315-4d6f-bba5-5117e202302c",
          "display" : "Behandling"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/Josefine"
  },
  "participant" : [
    {
      "type" : [
        {
          "coding" : [
            {
              "system" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes",
              "code" : "ca228a58-bd0e-4b0e-81ce-3866adc26535",
              "display" : "Barn/ung deltager"
            }
          ]
        }
      ]
    }
  ],
  "period" : {
    "start" : "2025-07-07T13:28:17Z"
  }
}

```
