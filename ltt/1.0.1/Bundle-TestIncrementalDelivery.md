# TestIncrementalDelivery - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TestIncrementalDelivery**

## Example Bundle: TestIncrementalDelivery

Profile: [KLGAtewayLTTIncrementalDelivery](StructureDefinition-klgateway-ltt-incremental-delivery.md)

Bundle TestIncrementalDelivery of type collection

-------

Entry 1 - fullUrl = https://test.fhir.dk/Bundle/RapportOmJosefine

Resource Bundle:

> 

Profile: [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md)

Bundle RapportOmJosefine of type collection
-------
Entry 1 - fullUrl = http://fhir.kl.dk/ltt/Patient/JosefineResource Patient:
> 

Profile: [KLGatewayLTTCitizen](StructureDefinition-klgateway-ltt-citizen.md)

Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))
-------

-------
Entry 2 - fullUrl = http://fhir.kl.dk/ltt/CarePlan/ForloebResource CarePlan:
> 

Profile: [KLGatewayLTTCarePlan](StructureDefinition-klgateway-ltt-care-plan.md)

**status**: Active**intent**: Plan**subject**:[Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)**period**: 2025-05-14 08:17:00+0000 --> (ongoing)
> **activity**

-------
Entry 3 - fullUrl = http://fhir.kl.dk/ltt/Encounter/BehandlingskontaktResource Encounter:
> 

Profile: [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md)

**BasedOnCarePlan**:[CarePlan: status = active; intent = plan; period = 2025-05-14 08:17:00+0000 --> (ongoing)](CarePlan-Forloeb.md)**DeliveryType**:Individuel indsats**status**: completed**class**:ambulatory**type**:Behandling**subject**:[Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)

### Participants

| | |
| :--- | :--- |
| - | **Type** |
| * | Barn/ung deltager |


-------
Entry 4 - fullUrl = http://fhir.kl.dk/ltt/CarePlan/HenvisningResource CarePlan:
> 

Profile: [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md)

**basedOn**:[CarePlan: status = active; intent = plan; period = 2025-05-14 08:17:00+0000 --> (ongoing)](CarePlan-Forloeb.md)**status**: Completed**intent**: Plan**subject**:[Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))](Patient-Josefine.md)**period**: 2025-07-07 14:28:17+0000 --> (ongoing)
> **activity**




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "TestIncrementalDelivery",
  "meta" : {
    "profile" : [
      "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-incremental-delivery"
    ]
  },
  "type" : "collection",
  "timestamp" : "2025-07-08T03:00:00Z",
  "entry" : [
    {
      "fullUrl" : "https://test.fhir.dk/Bundle/RapportOmJosefine",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "RapportOmJosefine",
        "meta" : {
          "profile" : [
            "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-delivery-report"
          ]
        },
        "type" : "collection",
        "timestamp" : "2025-07-08T03:00:00Z",
        "entry" : [
          {
            "fullUrl" : "http://fhir.kl.dk/ltt/Patient/Josefine",
            "resource" : {
              "resourceType" : "Patient",
              "id" : "Josefine",
              "meta" : {
                "profile" : [
                  "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
                ]
              },
              "identifier" : [
                {
                  "use" : "official",
                  "system" : "urn:oid:1.2.208.176.1.2",
                  "value" : "0505149996"
                }
              ],
              "active" : true,
              "managingOrganization" : {
                "identifier" : {
                  "use" : "official",
                  "system" : "urn:oid:1.2.208.176.1.1",
                  "value" : "451000016003"
                }
              }
            }
          },
          {
            "fullUrl" : "http://fhir.kl.dk/ltt/CarePlan/Forloeb",
            "resource" : {
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
          },
          {
            "fullUrl" : "http://fhir.kl.dk/ltt/Encounter/Behandlingskontakt",
            "resource" : {
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
          },
          {
            "fullUrl" : "http://fhir.kl.dk/ltt/CarePlan/Henvisning",
            "resource" : {
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
          }
        ]
      }
    }
  ]
}

```
