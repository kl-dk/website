# KLGatewayLTTEncounter - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGatewayLTTEncounter**

## Resource Profile: KLGatewayLTTEncounter 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTEncounter |

 
Encounter between a child or youth and the LTT 

## Scope and usage

This model is used whenever an encounter is completed between a citizen and LTT.

The Encounter.type attribute is used to classify the type of activities that occur at the encounter. The encounters have been classified accordingly:

* Henvendelse
* Forsamtale
* Screening
* Behandling
* Afsluttende samtale
* Afslutning

Only encounters actually carried out should be documented. Consequently, the encounter.status should be 'finished'. However, if errors have been reported use the 'entered-in-error' status as described by the FHIR documentation.

Encounter.class is mandatory in FHIR. In this implementation guide, always use 'AMB' Ambulatory.

The time of the encounter is documented in Encounter.period.start, and it is mandatory.

Encounter.extension[basedOnCarePlan] must be populated with a reference to the care plan.

Encounter.subject relates to the subject that the encounter is about. In LTT this is always the child or youth. Eventhough it can be the parents, legal guardians, etc. of the child or youth that are receiving the training or guiding. To document this, Encounter.participant can be used to tell whether it is the child/youth, who is present (maybe in companionship with the parents) or if it is just the parents, who participate in the encounter. Encounter.extension[deliveryType] is used to state, how encounters are delivered. Valid values are 'individual' and 'group based'. There's a difference in how the information is registered in the user interface and how it is reported to KL Gateway. The table below shows how the registrations from the user interface is represented in FHIR:

| | |
| :--- | :--- |
| 8742dc92-2878-4074-b128-b0384c4989c9"Gruppebaseret behandling med barn/ung" | Encounter.extension[deliveryType] = 2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats"Encounter.participant.type.coding = ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager" |
| dadb1540-9542-46d1-a784-0559d94e0b9a"Gruppebaseret behandling uden barn/ung" | Encounter.extension[deliveryType] = 2865f123-15a7-4a36-a514-32ea37c400ca "Gruppebaseret indsats"Encounter.participant.type.coding = d3578249-10df-4051-851d-3986b1570bee "Omsorgsperson uden barn/ung" |
| ca52f015-193e-4d31-9471-7385717dfa44"Individuel behandling med barn/ung" | Encounter.extension[deliveryType] = 8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"Encounter.participant.type.coding = ca228a58-bd0e-4b0e-81ce-3866adc26535 "Barn/ung deltager" |
| c86b5c04-7e13-488b-87fd-fb1e30309bb8"Individuel behandling uden barn/ung" | Encounter.extension[deliveryType] = 8d12d74c-17da-47a7-a4fe-e69dbaec0a8c "Individuel indsats"Encounter.participant.type.coding = d3578249-10df-4051-851d-3986b1570bee "Omsorgsperson uden barn/ung" |

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

| | | |
| :--- | :--- | :--- |
| kontaktstatus | Kode, der indikerer om kontakten er igangværende, eller om dokumentationen repræsentere en fremtidig intention eller er historisk | Encounter.status |
| kontaktklasse | Klasse, der udtrykker en generel kategori for kontakten, som rækker ud over den kommunale kontekst | Encounter.class |
| kontakttype | Kode, der udtrykker typen af aktivitet der gennemføres ved kontakten | Encounter.type |
| kontaktsubjekt | Den borger kontakten vedrører | Encounter.subject |
| kontaktdeltagere | Deltagere under kontakten | Encounter.participant |
| kontaktstart | Kontaktens start | Encounter.period.start |
| kontaktLeveringstype | Type, der beskriver hvordan kontaktes leveres | Encounter.extension:deliveryType |
| kontaktBaseretPå | Den care plan, der er grunden til at denne kontakt udføres | Encounter.extension:basedOnCarePlan |

**Usages:**

* Use this Profile: [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md)
* Examples for this Profile: [Encounter/Behandlingskontakt](Encounter-Behandlingskontakt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-encounter.csv), [Excel](StructureDefinition-klgateway-ltt-encounter.xlsx), [Schematron](StructureDefinition-klgateway-ltt-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-encounter",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTEncounter",
  "title" : "KLGatewayLTTEncounter",
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
  "description" : "Encounter between a child or youth and the LTT",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter",
        "constraint" : [
          {
            "key" : "klgateway-ltt-encounter-participants-and-deliveryType",
            "severity" : "error",
            "human" : "If the encounter is of type 'Behandling', then the encounter must have participant and deliveryType.",
            "expression" : "type.coding.code = 'b7f9217c-2315-4d6f-bba5-5117e202302c' implies (participant.type.coding.exists() and extension.where(url='http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type').value.coding.exists())",
            "source" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter"
          }
        ]
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.extension:deliveryType",
        "path" : "Encounter.extension",
        "sliceName" : "deliveryType",
        "short" : "[DK] kontaktLeveringstype",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-delivery-type"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:deliveryType.value[x].coding",
        "path" : "Encounter.extension.value[x].coding",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-delivery"
        }
      },
      {
        "id" : "Encounter.extension:basedOnCarePlan",
        "path" : "Encounter.extension",
        "sliceName" : "basedOnCarePlan",
        "short" : "[DK] kontaktBaseretPå",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-encounter-based-on-care-plan"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "max" : "0"
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "[DK] kontaktstatus"
      },
      {
        "id" : "Encounter.statusHistory",
        "path" : "Encounter.statusHistory",
        "max" : "0"
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "[DK] kontaktklasse",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "AMB"
        }
      },
      {
        "id" : "Encounter.class.system",
        "path" : "Encounter.class.system",
        "min" : 1
      },
      {
        "id" : "Encounter.class.version",
        "path" : "Encounter.class.version",
        "max" : "0"
      },
      {
        "id" : "Encounter.class.code",
        "path" : "Encounter.class.code",
        "min" : 1
      },
      {
        "id" : "Encounter.class.userSelected",
        "path" : "Encounter.class.userSelected",
        "max" : "0"
      },
      {
        "id" : "Encounter.classHistory",
        "path" : "Encounter.classHistory",
        "max" : "0"
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "[DK] kontakttype",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-encounter-types"
        }
      },
      {
        "id" : "Encounter.type.coding",
        "path" : "Encounter.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Encounter.type.coding.version",
        "path" : "Encounter.type.coding.version",
        "max" : "0"
      },
      {
        "id" : "Encounter.type.coding.userSelected",
        "path" : "Encounter.type.coding.userSelected",
        "max" : "0"
      },
      {
        "id" : "Encounter.type.text",
        "path" : "Encounter.type.text",
        "max" : "0"
      },
      {
        "id" : "Encounter.serviceType",
        "path" : "Encounter.serviceType",
        "max" : "0"
      },
      {
        "id" : "Encounter.priority",
        "path" : "Encounter.priority",
        "max" : "0"
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "[DK] kontaktsubjekt",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.episodeOfCare",
        "path" : "Encounter.episodeOfCare",
        "max" : "0"
      },
      {
        "id" : "Encounter.basedOn",
        "path" : "Encounter.basedOn",
        "max" : "0"
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "short" : "[DK] kontaktdeltagere",
        "max" : "1"
      },
      {
        "id" : "Encounter.participant.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-participants"
        }
      },
      {
        "id" : "Encounter.participant.period",
        "path" : "Encounter.participant.period",
        "max" : "0"
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "max" : "0"
      },
      {
        "id" : "Encounter.appointment",
        "path" : "Encounter.appointment",
        "max" : "0"
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "[DK] kontaktstart",
        "min" : 1
      },
      {
        "id" : "Encounter.period.end",
        "path" : "Encounter.period.end",
        "max" : "0"
      },
      {
        "id" : "Encounter.length",
        "path" : "Encounter.length",
        "max" : "0"
      },
      {
        "id" : "Encounter.reasonCode",
        "path" : "Encounter.reasonCode",
        "max" : "0"
      },
      {
        "id" : "Encounter.reasonReference",
        "path" : "Encounter.reasonReference",
        "max" : "0"
      },
      {
        "id" : "Encounter.diagnosis",
        "path" : "Encounter.diagnosis",
        "max" : "0"
      },
      {
        "id" : "Encounter.account",
        "path" : "Encounter.account",
        "max" : "0"
      },
      {
        "id" : "Encounter.hospitalization",
        "path" : "Encounter.hospitalization",
        "max" : "0"
      },
      {
        "id" : "Encounter.location",
        "path" : "Encounter.location",
        "max" : "0"
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "max" : "0"
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "max" : "0"
      }
    ]
  }
}

```
